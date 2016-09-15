# Significantly inspired by http://chrisholtz.com/blog/organize-your-app-with-service-objects/
module Services
  module Base
    def self.included(base)
      base.extend ClassMethods
      base.include InstanceMethods
    end

    module ClassMethods
      def call(*args, &block)
        self.new.call *args, &block
      end
    end

    module InstanceMethods
      def call(*args, &block)
        raise NotImplementedError
      end
    end
  end
end
