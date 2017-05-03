require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do

  it { is_expected.to be_a OrderingController }

  let(:user) { create :user }

  describe 'GET #index' do

    let!(:restaurants)         { create_list :restaurant, 3 }
    let(:assigned_restaurants) { assigns(:restaurants) }

    before do
      expect(Restaurant).to receive(:order)
        .with(:updated_at).and_call_original
    end

    context 'as guest' do

      before { get :index }

      it { should respond_with :success }

      it { should render_template :index }

      it 'should assign restaurants as @restaurants' do
        expect(assigned_restaurants).to match_array restaurants
      end
    end

    context 'as user' do

      before do
        sign_in_as user
        get :index
      end

      it { should respond_with :success }

      it { should render_template :index }

      it 'should assign restaurants as @restaurants' do
        expect(assigned_restaurants).to match_array restaurants
      end
    end
  end

end
