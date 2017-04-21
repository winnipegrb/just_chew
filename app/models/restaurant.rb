class Restaurant < ApplicationRecord

  validates :name, :address, presence: true
  mount_uploader :logo, LogoUploader
end
