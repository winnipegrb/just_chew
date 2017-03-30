module SpecSteps
  def self.extended(mod)
    steps_modules.push mod
  end

  class << self
    def steps_modules
      @steps_modules ||= []
    end
  end
end
