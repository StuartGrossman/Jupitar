# require 'rails_helper'

# RSpec.describe Thing, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
require 'spec_helper'

describe Thing do

  let(:short_name) { 'N' }
  let(:shortest_name) { 'NT' }
  let(:long_name) { 'N' * 101 }
  let(:longest_name) { 'N' * 100 }

  let(:valid_name) { 'Name of Thing' }
  let(:valid_description) { 'Description of Thing' }
  let(:long_description) { 'N' * 1001 }

  let(:valid_thing) { FactoryGirl.build(:thing)}

  it 'should be valid' do
    expect(valid_thing).to be_valid
  end

  it 'should be invalid with short_name' do
    expect(FactoryGirl.build(:thing, name: short_name)).to_not be_valid
  end

  it 'should be invalid with long_name' do
    expect(FactoryGirl.build(:thing, name: long_name)).to_not be_valid
  end

  it 'should be valid with longest_name' do
    expect(FactoryGirl.build(:thing, name: longest_name)).to be_valid
  end

  it 'should be valid with shortest_name' do
    expect(FactoryGirl.build(:thing, name: shortest_name)).to be_valid
  end

  it 'should be invalid without name' do
    expect(FactoryGirl.build(:thing, name: nil)).to_not be_valid
  end

  it 'should be valid without description' do
    expect(FactoryGirl.build(:thing, name: valid_name)).to be_valid
  end

  it 'should be invalid with long description' do
    expect(FactoryGirl.build(:thing, name: valid_name, description: long_description)).to_not be_valid
  end

end 	