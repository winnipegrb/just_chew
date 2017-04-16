require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do

  let(:user) { create :user }

  describe 'GET #show' do

    context 'as guest' do

      before { get :show }

      it { should respond_with :redirect }

      it { should redirect_to sign_in_path }
    end

    context 'as user' do

      before do
        sign_in_as user
        get :show
      end

      it { should respond_with :success }

      it { should render_template :show }
    end
  end

  describe "PUT #update" do

  end

end
