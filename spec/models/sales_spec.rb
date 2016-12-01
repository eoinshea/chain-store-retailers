require 'rails_helper'

RSpec.describe Sale, :type => :model do

  before :each do
    @sale = FactoryGirl.create(:sale)
    puts @sale.to_s
  end

  it 'should have valid attributes' do
    expect(@sale.jumper).to be > 0
  end

  it 'should have valid attributes' do
    expect(@sale.jumper).to be > 0

  end

  it 'should have valid attributes' do
    expect(@sale.jumper).to be > 0

  end

  it 'should have valid attributes' do
    expect(@sale.jumper).to be > 0
  end

  it 'should have valid attributes' do
    expect(@sale.jumper).to be > 0
  end


end