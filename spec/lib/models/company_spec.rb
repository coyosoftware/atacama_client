require 'spec_helper'

describe AtacamaClient::Company do
  describe "validation" do
    it 'should be valid' do
      expect(AtacamaClient::Company.new(name: "Freddy", identification: 312312)).to be_valid
    end

    it 'should fail if name is nil' do
      expect(AtacamaClient::Company.new(name: nil).valid?).to eq(false)
    end

    it 'should fail if identification is nil' do
      expect(AtacamaClient::Company.new(identification: nil).valid?).to eq(false)
    end
  end
end