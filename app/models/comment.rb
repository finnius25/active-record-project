class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post

    validates :title, :body, :user_id, :post_id, presence: true
    validates :title, :body, uniqueness: true
    validates :title, length: { minimum: 3, maximum: 15 }
    validates :body, length: { minimum: 3, maximum: 50 }
end
