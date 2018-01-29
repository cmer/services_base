module Services
  module Responses
    class Error < Services::Responses::Base
      attr_accessor :error_message, :error_code

      def initialize(result, error_message: nil, error_code: nil, raise_exception_on_async_error: nil)
        @result, @error_message, @error_code, @raise_exception_on_async_error = 
        result, error_message, error_code, raise_exception_on_async_error

        raise_if_async!
      end

      def success?
        false
      end

    protected
      def raise_if_async!
        return unless should_raise?

        if @result.is_a?(Exception)
          raise @result
        else
          err = ("#{@error_message} " + "[#{@error_code}]".gsub("[]", "")).strip
          raise StandardError.new(err)
        end
      end

      def should_raise?
        (Services::Responses.configuration.raise_exception_on_async_error || @raise_exception_on_async_error) \
          && Services::Responses::Base.async_environment?
      end
    end
  end
end
