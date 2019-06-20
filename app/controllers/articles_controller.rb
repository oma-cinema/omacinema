 class ArticlesController < ApplicationController
  def index
    @articles = Article.all         # GET /restaurants
  end

  def show
    @article = Article.find(params[:id])         # GET /restaurants/:id
  end

  def new
    @article = Article.new      # GET /restaurants/new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  def edit          # GET /restaurants/:id/edit
    @article = Article.find(params[:id])       # POST /restaurants
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article)    # PATCH /restaurants/:id
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to articles_path      # DELETE /restaurants/:id
  end

  private

  def article_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:article).permit(:title, :content)
  end
end
