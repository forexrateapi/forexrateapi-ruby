# frozen_string_literal: true

module ForexRateAPI
  module Config
    extend self

    ATTRIBUTES = %i[
      endpoint
      api_key
      proxy
      user_agent
      ca_path
      ca_file
      logger
      timeout
      open_timeout
    ].freeze

    attr_accessor(*Config::ATTRIBUTES)

    def reset
      self.endpoint = 'https://api.forexrateapi.com/v1'
      self.api_key = nil
      self.user_agent = "ForexRateAPI Ruby Client/#{ForexRateAPI::VERSION}"
      self.ca_path = defined?(OpenSSL) ? OpenSSL::X509::DEFAULT_CERT_DIR : nil
      self.ca_file = defined?(OpenSSL) ? OpenSSL::X509::DEFAULT_CERT_FILE : nil
      self.proxy = nil
      self.logger = nil
      self.timeout = nil
      self.open_timeout = nil
    end
  end

  class << self
    def configure
      block_given? ? yield(Config) : Config
    end

    def config
      Config
    end
  end
end

ForexRateAPI::Config.reset
