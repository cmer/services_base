require 'spec_helper'

describe Services::Responses::Success do
  let(:obj) { Services::Responses::Success.new('result') }

  context 'initialize' do
    it 'sets result' do
      expect(obj.result).to eq 'result'
    end
  end

  context '#success?' do
    it 'returns true' do
      expect(obj.success?).to be true
    end
  end

  context '#error?' do
    it 'returns false' do
      expect(obj.error?).to be false
    end
  end
end
