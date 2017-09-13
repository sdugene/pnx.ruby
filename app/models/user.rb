class User < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_many :pinneds, dependent: :destroy
  has_many :videos, through: :pinneds, dependent: :destroy
end