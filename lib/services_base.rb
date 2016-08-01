require "services_base/version"

# Significantly inspired by http://chrisholtz.com/blog/organize-your-app-with-service-objects/
module ServicesBase
  def self.included(base)
    base.extend ClassMethods
    base.include InstanceMethods
  end

  module ClassMethods
    def call(*args, &block)
      @instance ||= self.new
      @instance.call *args, &block
    end
  end

  module InstanceMethods
    def call(*args, &block)
      raise NotImplementedError
    end
  end
end
