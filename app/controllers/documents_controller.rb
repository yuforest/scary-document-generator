class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end
  def new
    @document = Document.new
  end
  def create
    @document = Document.new(document_params)
  end

  private
  def document_params
    params.require(:docuemnt).permit(:name, :content)
  end
end