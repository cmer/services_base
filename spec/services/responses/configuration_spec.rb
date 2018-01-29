require 'spec_helper'

describe Services::Responses::Configuration do
  it 'allows setting raise_exception_on_async_error' do
    expect(Services::Responses.configuration.raise_exception_on_async_error).to eq false # default value

    Services::Responses.configure do |config|
      config.raise_exception_on_async_error = true
    end

    expect(Services::Responses.configuration.raise_exception_on_async_error).to eq true
  end
end
