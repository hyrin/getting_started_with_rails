class Article::Category < ApplicationRecord
  has_many :articles, dependent: :destroy
  validates :name, presence: true
  validates :slug, presence: true
end
