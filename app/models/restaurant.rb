class Restaurant < ActiveRecord::Base
  has_many :favorites
  has_many :describes
  has_many :categories, through: :describes
end