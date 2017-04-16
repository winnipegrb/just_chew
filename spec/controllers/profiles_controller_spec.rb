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

  describe 'PUT #update' do

    let(:params) { %i(first_name last_name email) }

    let(:attrs) { attributes_for(:user).slice(*params) }

    let(:assigned_user) { controller.send(:current_user) }

    let(:assigned_attrs) do
      assigned_user.reload.attributes.symbolize_keys.slice(*params)
    end

    context 'as guest' do

      before { put :update, params: { user: attrs } }

      it { should respond_with :redirect }

      it { should redirect_to sign_in_path }
    end

    context 'as user' do

      before { sign_in_as user }

      context 'valid params' do

        before { put :update, params: { user: attrs } }

        it { should respond_with :success }

        it { should render_template :show }

        it 'should update user' do
          expect(attrs).to eq assigned_attrs
        end

        it 'should be valid' do
          expect(assigned_user).to be_valid
        end
      end

      context 'invalid params' do

        let(:attrs) do
          attributes_for(:user, first_name: '').slice(*params)
        end

        before { put :update, params: { user: attrs } }

        it { should respond_with :unprocessable_entity }

        it { should render_template :show }

        it 'should not update user' do
          expect(attrs).to_not eq assigned_attrs
        end

        it 'should not be valid' do
          expect(assigned_user).to_not be_valid
        end
      end
    end
  end

end
