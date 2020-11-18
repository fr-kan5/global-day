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
    ENG_REGEX = /\A[a-zA-Z]+\z/.freeze
    with_options length: {maximum: 30} do
    validates :title, format: {with: ENG_REGEX, message: 'is only ENGLISH'}
    validates :place, format: {with: ENG_REGEX, message: 'is only ENGLISH'}
    end
    validates :text, format: {with: ENG_REGEX, message: 'is only ENGLISH'}
    validates :image
  end
end
