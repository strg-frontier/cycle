class CycleController < ApplicationController
  def index
    @articles = Article.all

  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.find(1)
  end
end
