class Post < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD

=======
>>>>>>> 8fc1cac6981a6555b3593dd3df48144c9e428d5e
  validates :body, presence: true
  validates :title, presence: true, length: {maximum: 200}
end
