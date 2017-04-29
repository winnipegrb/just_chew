require 'rails_helper'

RSpec.describe Menu, type: :model do

  subject { create :menu }

  context 'associations' do
    it { should belong_to :restaurant }
  end

  context 'validations' do
    it { should validate_presence_of :restaurant }
  end
end
