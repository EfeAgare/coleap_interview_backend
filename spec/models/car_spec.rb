require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'association' do
    it { should belong_to(:car_range) }
  end
end
