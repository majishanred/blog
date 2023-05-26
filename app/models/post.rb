class Post < ApplicationRecord
  belongs_to :user

  has_many_attached :images, dependent: :destroy

  validates :title, :text, presence: true
  validates :title, length: { minimum:3, maximum: 100 }
end
