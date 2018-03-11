class Article < ApplicationRecord
  belongs_to :article_category, :class_name => 'Article::Category'
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
            length: { minimum: 5 }
  validates :author_name, presence: true
end