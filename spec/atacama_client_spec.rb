require 'spec_helper'

describe AtacamaClient do
  it 'has a version number' do
    expect(AtacamaClient::VERSION).not_to be nil
  end

  describe ".configuration" do
    it "should return the configuration object" do
      expect(AtacamaClient.configuration).to be_a(AtacamaClient::Configuration)
    end
  end
end
