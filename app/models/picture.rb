class Picture < ApplicationRecord
  belongs_to :user, optional: true
  has_many :favorites
  has_many :users, through: :favorites
  mount_uploader :image, ImageUploader
  validates :content, presence: true
  validates :image, presence: true
end
