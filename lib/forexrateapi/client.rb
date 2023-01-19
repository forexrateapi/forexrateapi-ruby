# frozen_string_literal: true

module ForexRateAPI
  class Client
    include Connection
    include Request
    include Endpoints

    attr_accessor(*Config::ATTRIBUTES)

    def initialize(options = {})
      ForexRateAPI::Config::ATTRIBUTES.each do |key|
        send("#{key}=", options[key] || ForexRateAPI.config.send(key))
      end
      @logger ||= ForexRateAPI::Logger.logger
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
end
