require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do

  describe "GET #welcome" do

    before { get :welcome }

    it { should respond_with(:success) }

    it { should have_rendered(layout: :application) }

    it { should have_rendered(:welcome) }
  end
end
