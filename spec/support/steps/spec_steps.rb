module SpecSteps
  mattr_accessor(:steps_modules) { [] }

  def self.extended(mod)
    steps_modules.push mod
  end
end
