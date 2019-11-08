class Post < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  validates :title, presence: true, length: {maximum: 200}

  def edit_by?(current_user)
    # !current_post.nil? && (current_post == self || current_post.admin?)
    user == current_user || current_user&.admin?
  end
end
