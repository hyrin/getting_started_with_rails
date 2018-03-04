class ArticleCategoriesController < ApplicationController

  def index
    @category = Article::Category.all
  end

  def new
    @category = Article::Category.new
  end

  def create

    @category = Article::Category.new(category_params)
    #raise ‘yyy’
    if @category.save
      # binding.irb
      redirect_to @category
    else

      render 'new'
    end

  end

  def show
    @category = Article::Category.find(params[:id])
  end

  def update
    @category = Article::Category.find(params[:id])

    if @category.update(category_params)
      redirect_to @category
    else
      render 'edit'
    end
  end

  def destroy
    @category = Article::Category.find(params[:id])
    @category.destroy

    redirect_to article_categories_path
  end

  private
  def category_params
    params.require(:article_category).permit(:name, :slug)
  end
end
