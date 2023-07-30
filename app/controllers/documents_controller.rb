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

  private
    def document_params
      params.require(:document).permit(:file)
    end
end
