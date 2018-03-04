class AddArticleCategoryRefToArticles < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :article_categories, foreign_key: true
  end
end
