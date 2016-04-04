require 'spec_helper'

describe AtacamaClient::ThirdParty do
  describe "validation" do
    it 'should be valid' do
      expect(AtacamaClient::ThirdParty.new(name: "Freddy", document: 312312)).to be_valid
    end

    it 'should fail if name is nil' do
      expect(AtacamaClient::ThirdParty.new(name: nil).valid?).to eq(false)
    end

    it 'should fail if document is nil' do
      expect(AtacamaClient::ThirdParty.new(document: nil).valid?).to eq(false)
    end
  end
end