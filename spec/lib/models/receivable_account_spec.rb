require 'spec_helper'

describe AtacamaClient::ReceivableAccount do
  describe "validation" do
    it 'should be valid' do
      expect(AtacamaClient::ReceivableAccount.new(name: "Freddy", reason: 312312)).to be_valid
    end

    it 'should fail if name is nil' do
      expect(AtacamaClient::ReceivableAccount.new(name: nil).valid?).to eq(false)
    end

    it 'should fail if reason is nil' do
      expect(AtacamaClient::ReceivableAccount.new(reason: nil).valid?).to eq(false)
    end
  end
end