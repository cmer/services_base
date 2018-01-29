module Services::Responses
  class << self
    attr_accessor :configuration
  end

  def self.configure
    yield(configuration)
  end

  class Configuration
    attr_accessor :raise_exception_on_async_error

    def initialize
      @raise_exception_on_async_error = false
    end
  end
end

Services::Responses.configuration ||= Services::Responses::Configuration.new