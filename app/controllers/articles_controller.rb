class ArticlesController < ApplicationController

  def new

  end

  def create

    @article = Article.new(article_param)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end

  end

  #This is just to check git commmit
  #Another line added to test branch

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  private

   def article_param
      params.require( :article ).permit( :title, :text )
   end

end
