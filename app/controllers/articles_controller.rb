class ArticlesController < ApplicationController

  #http_basic_authenticate_with name: "ann", password: "secret", except: [:index, :show]

    def index
      #@articles = Article.all
      @a = Article.ransack(params[:q])
      @articles = @a.result(distinct: true).page params[:page]

      #@articles = Article.all
    end

    def show
      @article = Article.find(params[:id])
    end

    def new
      @article = Article.new
    end

    def edit
      @article = Article.find(params[:id])
      binding.irb
    end

    def create
      @article = Article.new(article_params)
      raise ‘yyy’
      binding.irb
      if @article.save
        redirect_to @article
      else
        render 'new'
      end
    end

    def update
      @article = Article.find(params[:id])
      raise ‘yyy’
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end

    def destroy
      @article = Article.find(params[:id])
      @article.destroy
      raise ‘yyy’
      redirect_to articles_path
    end

    private
    def article_params
      params.require(:article).permit(:author_name, :state, :title, :text)
    end
end