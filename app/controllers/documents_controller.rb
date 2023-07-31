class DocumentsController < ApplicationController
  def new
    @document = Document.new
  end

  def create
    document = Document.create!(document_params)
    redirect_to document_path(document)
  end

  def show
    @document = Document.find(params[:id])
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
end
