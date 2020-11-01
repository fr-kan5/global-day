class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments, dependent: :destroy
  has_one_attached :avatar  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :country

  with_options presence: true do
    validates :name
    validates :password_confirmation
    validates :country_id, numericality: { other_than: 1 }
    validates :birthday
    validates :avatar
  end
  validates :password, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'Password Include both letters and numbers' }
end
