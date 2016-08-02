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

    end
  end
end
