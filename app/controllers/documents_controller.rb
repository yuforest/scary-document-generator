class DocumentsController < ApplicationController
  before_action :set_introduction, only: :index
  def index
    @documents = Document.order(created_at: :desc).page(params[:page]).per(5)
  end

  def show
    session[:session_id]
    @document = Document.find(params[:id])
    impressionist(@document, nil, :unique => [:session_hash])
    @page_views = @document.impressionist_count
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to document_path(@document)
    else
      flash[:alert] = "登録できませんでした"
      render "new"
    end
  end

  private
  def document_params
    params.require(:document).permit(:name, :content)
  end

  def set_introduction
    @introduction = "血文字で書かれたような怖い文章を簡単に作成できるサイトです。怖くない文章も勝手に怖くなってくれます。"
  end
end