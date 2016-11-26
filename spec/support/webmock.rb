RSpec.configure do |config|
  config.before(:suite) do
    WebMock.disable_net_connect! allow_localhost: true
  end

  config.before(type: :feature) do
    WebMock.allow_net_connect!
  end

  config.after(type: :feature) do
    WebMock.disable_net_connect! allow_localhost: true
  end
end
