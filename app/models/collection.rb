class Collection < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :user_id, presence: true
end
