module JsonHelper
  extend SpecHelper

  type :controller

  def serialize(resource, options = {})
    ActiveModelSerializers::SerializableResource.new(
      resource, options
    ).as_json.stringify_keys
  end
end
