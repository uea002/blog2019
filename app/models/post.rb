class Post < ApplicationRecord
  validates :author, presence: true
  validates :body, presence: true
  validates :title, presence: true, length: {maximum: 200}
end
