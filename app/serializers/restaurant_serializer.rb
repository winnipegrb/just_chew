class RestaurantSerializer < ApplicationSerializer
  attributes :name, :address, :logo_url

  def logo_url
    object.logo.thumb.url
  end
end
