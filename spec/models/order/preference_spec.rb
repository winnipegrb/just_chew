require 'rails_helper'

RSpec.describe Order::Preference, type: :model do

  subject { create :order_preference }

  context 'validations' do
    it { should validate_presence_of :user }
    it { should validate_presence_of :type }
    it { should validate_presence_of :place_at }
  end

  context 'associations' do
    it { should belong_to :user }
  end

  context 'callbacks' do
    context 'after_initialize' do
      subject { described_class.new }

      describe '#place_at' do
        let(:now) { Time.now }

        before { Timecop.freeze(now) }

        after { Timecop.return }

        it 'should set place_at current time' do
          expect(subject.place_at).to eq now
        end
      end
    end
  end
end
