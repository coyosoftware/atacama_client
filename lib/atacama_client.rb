require "active_rest_client"
require "atacama_client/version"
require "atacama_client/models/configuration"
require "atacama_client/models/third_party"
require "atacama_client/models/base"

module AtacamaClient
  def self.configuration
    Configuration.instance
  end

  def self.configure(&block)
    block.call config
  end

  ActiveRestClient::Base.base_url = "http://atacama.coyo.com.br/api"
end
