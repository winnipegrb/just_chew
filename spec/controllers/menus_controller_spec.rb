require 'rails_helper'

RSpec.describe MenusController, type: :controller do

  it { is_expected.to be_a OrderingController }

  let(:user) { create :user }

  let!(:restaurant) { create :restaurant }

  describe 'GET #show' do
    let!(:menu)               { restaurant.menu }
    let(:assigned_restaurant) { assigns(:restaurant) }
    let(:assigned_menu)       { assigns(:menu) }

    before do
      expect(controller).to receive(:load_restaurant).and_call_original
      expect(controller).to receive(:load_menu).and_call_original
    end

    context 'as guest' do

      before do
        get :show, params: { restaurant_id: restaurant.id }
      end

      it { should respond_with :success }

      it { should render_template :show }

      it 'should assign restaurant as @restaurant' do
        expect(assigned_restaurant).to eq restaurant
      end

      it 'should assign menu as @menu' do
        expect(assigned_menu).to eq menu
      end
    end

    context 'as user' do

      before do
        sign_in_as user
        get :show, params: { restaurant_id: restaurant.id }
      end

      it { should respond_with :success }

      it { should render_template :show }

      it 'should assign restaurant as @restaurant' do
        expect(assigned_restaurant).to eq restaurant
      end

      it 'should assign menu as @menu' do
        expect(assigned_menu).to eq menu
      end
    end
  end

end
