require 'rspec/expectations'

RSpec::Matchers.define :have_private_method do |meth_name|
  match do |subject|
    break false if subject.respond_to? meth_name
    break true  if subject.respond_to? meth_name, true
  end
end
