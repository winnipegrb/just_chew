module ApplicationHelper
  def welcome_cards
    [
      { icon: 'dollar',  title: 'No Extra Cost' },
      { icon: 'rocket',  title: 'Fast Delivery' },
      { icon: 'clock-o', title: 'Time Saved' }
    ]
  end

  def serialize(resource, options = {})
    ActiveModelSerializers::SerializableResource.new(resource, options)
  end

  def ordering?
    controller.is_a? OrderingController
  end
end
