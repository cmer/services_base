module Services
  module Responses
    class Error < Services::Responses::Base
      attr_accessor :error_message, :error_code

      def initialize(result, error_message: nil, error_code: nil)
        @result, @error_message, @error_code = result, error_message, error_code
      end

      def success?
        false
      end
    end
  end
end
