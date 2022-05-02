class Article < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: {minimum: 3,maximum: 60}
    validates :description, presence: true, length: {minimum: 3, maximum: 600}
    validates :user_id, presence: true
end