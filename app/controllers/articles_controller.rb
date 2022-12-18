class ArticlesController < ApplicationController
  include ArticlesHelper
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    # render JSON: { @article.title => @article.title } #--??
    # render xml: Article.last(69)                      #--??
  end

  def new
    @article = Article.new
  end

  # def db_to_xml
  #   json = @article.to_json
  #   object = Article.last
  #   # object.from_json(json) 
  #   render xml: object
  # end

  def create
    @article = Article.new(article_params)
    mas = []
    Article.all.each do |item|
      mas.push(item.title)
    end
    check_info = 'nil'
    mas.each do |item|
      check_info = @article.title if item == @article.title
    end

    if check_info == 'nil'
      @article.body = foo_result @article.title
      if (@article.save)
        redirect_to @article
      else
        render :new, status: :unprocessable_entity
      end
    else
      @article = (find_db check_info)
      redirect_to @article
    end
  end

  private
    def article_params  #приватный метод, фильтрующий params (strong params)
      params.require(:article).permit(:title, :body)
    end
end
