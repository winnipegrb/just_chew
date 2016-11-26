RSpec.configure do |config|
  SpecHelper.tap do |base_helper|
    config.include base_helper
    base_helper.helper_modules.each do |helper|
      config.include helper, type: helper.include_type
    end
  end
end
