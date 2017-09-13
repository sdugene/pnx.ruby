class Video < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_many :pinneds, dependent: :destroy
  has_many :users, through: :pinneds, dependent: :destroy
end