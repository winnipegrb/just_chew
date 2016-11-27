module SpecHelper
  mattr_accessor(:helper_modules) { [] }

  def self.extended(mod)
    mod.mattr_accessor(:include_type)  { :feature }
    mod.define_singleton_method(:type) { |type| self.include_type = type }
    helper_modules.push mod
  end
end
