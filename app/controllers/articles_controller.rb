class ArticlesController < ApplicationController

  def index
    @articles = Article.all    
  end

  def new
  end

  def show
    @article = Article.find(params[:id])
    ###call from flexirest
   # @comments = Comment.all(params[:id]) 
                # OR
    @comments = @article.get_comments
  end

  def create    
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

end
