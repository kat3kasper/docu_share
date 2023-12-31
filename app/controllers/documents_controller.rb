class DocumentsController < ApplicationController
  # TODO add index page with all documents
  def index
    if user_signed_in?
      # TODO - fix n+1 query
      @documents = current_user.documents.includes(:file_attachment)
    else
      redirect_to new_document_path
    end
  end

  def new
    @document = Document.new
  end

  def create
    if document_params_present?
      @document = Document.new(document_params)
      @document.user = current_user if user_signed_in?

      if @document.save
        redirect_to @document
      else
        render :new
      end
    else
      redirect_to new_document_path, alert: 'No document data submitted.'
    end
  end

  def show
    @document = Document.find(params[:id])

    if @document.user.present? && @document.user != current_user
      redirect_to root_path, alert: 'Unauthorized' and return
    end
  end

  def destroy
    @document = Document.find(params[:id])

    if @document.user.present? && @document.user != current_user
      redirect_to root_path, alert: 'Unauthorized' and return
    end

    @document.destroy
    redirect_to root_path, notice: 'Document was successfully deleted.'
  end

  def share
    document = Document.find_by_shared_id!(params[:shared_id])

    if document.is_markdown_file?
      file = document.file.download
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true)

      @content = markdown.render(file)
      render layout: 'article'
    else
      redirect_to url_for(document.file) and return
    end
  end

  private
    def document_params
      params.require(:document).permit(:file)
    end

    def document_params_present?
      params.key?(:document)
    end
end
