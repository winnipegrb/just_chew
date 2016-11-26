RSpec.configure do |config|
  SpecSteps.tap do |base_steps|
    config.include base_steps, type: :feature
    base_steps.steps_modules.each do |steps|
      config.include steps, type: :feature
    end
  end
end
