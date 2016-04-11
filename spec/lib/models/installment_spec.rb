require 'spec_helper'

describe AtacamaClient::Installment do
  describe "validation" do
    it 'should be valid' do
      expect(AtacamaClient::Installment.new(number: 1, value: 34, due_date: "24/08/2016")).to be_valid
    end

    it 'should fail if number is nil' do
      expect(AtacamaClient::Installment.new(number: nil, value: 34, due_date: "24/08/2016").valid?).to eq(false)
    end

    it 'should fail if value is nil' do
      expect(AtacamaClient::Installment.new(number: 1, value: nil, due_date: "24/08/2016").valid?).to eq(false)
    end

    it 'should fail if due date is nil' do
      expect(AtacamaClient::Installment.new(number: 1, value: 34, due_date: nil).valid?).to eq(false)
    end
  end
end