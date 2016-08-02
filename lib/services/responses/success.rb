module Services
  module Responses
    class Success < Services::Responses::Base
      def success?
        true
      end
    end
  end
end
