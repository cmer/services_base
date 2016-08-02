require 'spec_helper'

describe Services::Responses::Base do
  context 'initialize' do
    it 'sets result' do
      obj = Services::Responses::Base.new('result')
      expect(obj.result).to eq 'result'
    end
  end

  context '#error?' do
    it 'is not implemented' do
      obj = Services::Responses::Base.new
      expect { obj.error? }.to raise_error(NotImplementedError)
    end
  end

  context '#success' do
    it 'is not implemented' do
      obj = Services::Responses::Base.new
      expect { obj.success? }.to raise_error(NotImplementedError)
    end
  end

end
