FactoryGirl::SyntaxRunner.tap do |factory|
  SpecHelper.helper_modules.each do |helper|
    next unless helper.include_type.eql? :factory
    factory.include helper
  end
end
