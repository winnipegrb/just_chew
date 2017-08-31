require 'rails_helper'

RSpec.describe LocalesController, type: :controller do

  describe 'POST #find' do

    before { post :find }

    it { should respond_with :redirect }

    it { should redirect_to restaurants_path }

  end

end
