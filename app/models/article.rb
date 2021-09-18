class Article < ApplicationRecord
    has_rich_text :body
    has_many :comments, dependent: :destroy
    validates :title, :body, presence: true
end
