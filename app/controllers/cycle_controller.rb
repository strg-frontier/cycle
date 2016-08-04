class CycleController < ApplicationController

  before_action :move_to_index, except: [:index ,:show]

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
    Article.create(title: article_params[:title], image: article_params[:image], text: article_params[:text], user_id: current_user.id)
  end

  private
  def article_params
    params.permit(:title, :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
