require 'rails_helper'

RSpec.describe Attendance, type: :model do

=begin
  before(:each) do
    @attendance = FactoryBot.create(:attendance)
  end

  it 'has valid factory' do
    expect(build(:attendance)).to be_valid
  end

  it 'associations' do
    it { expect(@attendance).to belongs_to(:event) }
    it { expect(@attendance).to belongs_to(:user) }
  end
=end
end