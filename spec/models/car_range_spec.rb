require 'rails_helper'

RSpec.describe CarRange, type: :model do
  describe 'association' do
    it { should have_many(:cars) }
  end

  describe 'validation' do
    it { should validate_presence_of(:unit) }
    it { should validate_presence_of(:distance) }
  end
end
