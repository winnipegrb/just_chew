require 'rails_helper'

RSpec.describe 'application/welcome.slim', type: :view do

  before do
    expect(view).to receive(:welcome_cards).and_call_original
    expect(view).to receive(:simple_form_for).and_call_original
  end

  before { render }

  it { should have_rendered(:welcome) }

  it { should have_rendered(partial: '_card', count: 3) }
end
