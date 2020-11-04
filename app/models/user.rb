class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
  has_many :comments, dependent: :destroy
  has_one_attached :avatar
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :country

  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end

  with_options presence: true do
    validates :name
    validates :password_confirmation, on: :create
    validates :country_id, numericality: { other_than: 1 }
    validates :birthday
    validates :avatar
  end
  validates :password, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'Password Include both letters and numbers' }, on: :create
end
