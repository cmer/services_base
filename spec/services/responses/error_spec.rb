require 'spec_helper'

describe Services::Responses::Error do
  let(:obj) { Services::Responses::Error.new('result', error_message: 'message', error_code: 'code') }

  context 'initialize' do
    it 'sets result' do
      expect(obj.result).to eq 'result'
    end

    it 'sets error message' do
      expect(obj.error_message).to eq 'message'
    end

    it 'sets error code' do
      expect(obj.error_code).to eq 'code'
    end
  end

  context '#success?' do
    it 'returns false' do
      expect(obj.success?).to be false
    end
  end

  context '#error?' do
    it 'returns true' do
      expect(obj.error?).to be true
    end
  end
end
