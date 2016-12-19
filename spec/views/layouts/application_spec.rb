require 'rails_helper'

RSpec.describe 'layouts/application.slim', type: :view do

  before { render }

  it { should have_rendered(partial: 'layouts/_header') }

  it { should have_rendered(partial: 'layouts/_footer') }
end
