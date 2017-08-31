class Order::Preference < ApplicationRecord

  self.inheritance_column = :kind

  belongs_to :user

  validates :type, :place_at, presence: true
  validates :user, presence: true

  enum type: %i(delivery pickup)

  after_initialize :set_place_at

  private

  def set_place_at
    self.place_at ||= Time.now
  end
end
