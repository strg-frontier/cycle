class CycleController < ApplicationController
  def index
    @articles = Article.all.order("id DESC").page(params[:page]).per(6)

  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.find(1)
  end

  def create
    Article.create(check_params)
  end

  private
  def check_params
    params.permit(:title, :image, :text)
  end
end
