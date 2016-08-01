require 'spec_helper'

class TestService
  include ServicesBase
end

describe ServicesBase do
  it 'has a version number' do
    expect(ServicesBase::VERSION).not_to be nil
  end

  context ".call" do
    it 'instanciates an object and calls the #call method' do
      allow_any_instance_of(TestService).to receive(:call).and_return(1)
      expect(TestService.call).to eq 1
    end
  end

  context "#call" do
    it 'raises NotImplementedError' do
      expect { TestService.new.call }.to raise_error(NotImplementedError)
    end
  end
end
