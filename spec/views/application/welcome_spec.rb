require 'rails_helper'

RSpec.describe 'application/welcome.slim', type: :view do

  before { allow(view).to receive(:inspect).and_return('view') }

  before do
    expect(view).to receive(:welcome_cards).with(no_args).and_call_original
    expect(view).to receive(:simple_form_for).and_call_original
  end

  before { render }

  it { should have_rendered(:welcome) }

  it { should have_rendered(partial: '_card', count: 3) }
end
