require 'rails_helper'

RSpec.describe User, type: :model do

  subject { create :user }

  context 'associations' do
    it { should have_one(:order_preference).dependent(:destroy) }
  end

  context 'validations' do
    it { should validate_presence_of :order_preference }
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
  end

  context 'callbacks' do
    context 'after_initialize' do
      subject { described_class.new }

      describe '#order_preference' do
        it 'should set place_at current time' do
          expect(subject.order_preference).to be_a_new Order::Preference
        end
      end
    end
  end
end
