class Menu < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, presence: true
end
