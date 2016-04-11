require 'spec_helper'

describe AtacamaClient::Receivable do
  describe "validation" do
    before(:each) do
      @installment = AtacamaClient::Installment.new(number: 1, value: "22", due_date: "25/02/2015")
    end

    it 'should be valid' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: 3, document_number: "5646", date: "24/05/2015", third_party_id: 3, first_due_date: "27/05/2015", total_value: 54, installments_number: 1, installments: [@installment])).to be_valid
    end

    it 'should fail if company id is nil' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: nil, financial_account_id: 1, document_type: 3, document_number: "5646", date: "24/05/2015", third_party_id: 3, first_due_date: "27/05/2015", total_value: 54, installments_number: 3, installments: [@installment]).valid?).to eq(false)
    end

    it 'should fail if financial account id is nil' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: nil, document_type: 3, document_number: "5646", date: "24/05/2015", third_party_id: 3, first_due_date: "27/05/2015", total_value: 54, installments_number: 3, installments: [@installment]).valid?).to eq(false)
    end

    it 'should fail if date is nil' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: 3, document_number: "5646", date: nil, third_party_id: 3, first_due_date: "27/05/2015", total_value: 54, installments_number: 3, installments: [@installment]).valid?).to eq(false)
    end

    it 'should fail if third party id is nil' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: 3, document_number: "5646", date: "24/05/2015", third_party_id: nil, first_due_date: "27/05/2015", total_value: 54, installments_number: 3, installments: [@installment]).valid?).to eq(false)
    end

    it 'should fail if third party id is nil' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: 3, document_number: "5646", date: "24/05/2015", third_party_id: 3, first_due_date: nil, total_value: 54, installments_number: 3, installments: [@installment]).valid?).to eq(false)
    end

    it 'should fail if total value is nil' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: 3, document_number: "5646", date: "24/05/2015", third_party_id: 3, first_due_date: "27/05/2015", total_value: nil, installments_number: 3, installments: [@installment]).valid?).to eq(false)
    end

    it 'should fail if installments number is nil' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: 3, document_number: "5646", date: "24/05/2015", third_party_id: 3, first_due_date: "27/05/2015", total_value: 54, installments_number: nil, installments: [@installment]).valid?).to eq(false)
    end

    it 'should fail if document type is nil' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: nil, document_number: "5646", date: "24/05/2015", third_party_id: 3, first_due_date: "27/05/2015", total_value: 54, installments_number: 3, installments: [@installment]).valid?).to eq(false)
    end

    it 'should fail if document number is nil' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: 3, document_number: nil, date: "24/05/2015", third_party_id: 3, first_due_date: "27/05/2015", total_value: 54, installments_number: 3, installments: [@installment]).valid?).to eq(false)
    end

    it 'should fail if the installments is nil' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: 3, document_number: "5646", date: "24/05/2015", third_party_id: 3, first_due_date: "27/05/2015", total_value: 54, installments_number: 1, installments: nil).valid?).to eq(false)
    end

    it 'should fail if the installments is empty' do
      expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: 3, document_number: "5646", date: "24/05/2015", third_party_id: 3, first_due_date: "27/05/2015", total_value: 54, installments_number: 1, installments: []).valid?).to eq(false)
    end

    context "with installments" do
      it "should fail if the installments are not valid" do
        installment = AtacamaClient::Installment.new(number: 1, value: nil, due_date: "25/02/2015")

        expect(AtacamaClient::Receivable.new(account_id: 2, company_id: 1, financial_account_id: 1, document_type: 3, document_number: "5646", date: "24/05/2015", third_party_id: 3, first_due_date: "27/05/2015", total_value: 54, installments_number: 1, installments: [installment]).valid?).to eq(false) 
      end
    end
  end
end