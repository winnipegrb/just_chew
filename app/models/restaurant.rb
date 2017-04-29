class Restaurant < ApplicationRecord
  has_one :menu, dependent: :destroy

  validates :menu, presence: true
  validates :name, :address, presence: true

  mount_uploader :logo, LogoUploader
end
