class User < ApplicationRecord
  serialize :liked_posts, Array
  
  has_many :posts, dependent: :destroy
  has_many :subscriptions

  has_one_attached :avatar, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end