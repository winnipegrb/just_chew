require 'rails_helper'

RSpec.describe Restaurant, type: :model do

  subject { create :restaurant }

  context 'associations' do
    it { should have_one(:menu).dependent(:destroy) }
  end

  context 'validations' do
    it { should validate_presence_of :menu }
    it { should validate_presence_of :name }
    it { should validate_presence_of :address }
  end
end
