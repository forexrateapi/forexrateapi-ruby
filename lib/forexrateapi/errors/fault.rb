# frozen_string_literal: true

module ForexRateAPI
  module Errors
    class Fault < ::Faraday::ClientError
      def message
        response[:body]['message'] || super
      end

      def headers
        response[:headers]
      end
    end
  end
end
