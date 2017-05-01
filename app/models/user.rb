class User < ApplicationRecord
  include Clearance::User

  has_one :order_preference,
    class_name: 'Order::Preference',
    dependent: :destroy

  validates :first_name, :last_name, presence: true
  validates :order_preference, presence: true

  after_initialize :set_order_preference

  private

  def set_order_preference
    return if order_preference.present?
    self.build_order_preference
  end
end
