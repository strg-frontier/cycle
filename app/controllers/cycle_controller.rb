class CycleController < ApplicationController

  before_action :move_to_index, except: [:index ,:show]

  def index
    @articles = Article.includes(:user).page(params[:page]).per(6).order("created_at DESC")

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

  def destroy
    article = Article.find(params[:id])
    if article.user_id == current_user.id
      article.destroy
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    if article.user_id == current_user.id
      article.update(article_params)
    end
  end

  private
  def article_params
    params.permit(:title, :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
