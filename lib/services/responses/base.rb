module Services
  module Responses
    class Base
      attr_reader :result

      def initialize(result = nil)
        @result = result
      end

      def success?
        raise NotImplementedError
      end

      def error?
        !success?
      end

      def self.async_environment?
        (defined?(Sidekiq) && !!Sidekiq.server?) || (ENV["_"] || "").include?("delayed_job") || (ENV["_"] || "").include?("resque")
      end
    end
  end
end
