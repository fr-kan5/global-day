class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :users, through: :likes
  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
  has_many :comments, dependent: :destroy
  has_one_attached :image
  with_options presence: true do
    validates :title
    validates :text
    validates :place
    validates :image
  end
end
