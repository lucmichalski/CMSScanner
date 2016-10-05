require 'spec_helper'

describe Numeric do
  describe '#bytes_to_human' do
    context 'when positive' do
      it 'returns the expected value' do
        expect(100.bytes_to_human).to eql '100 B'
        expect(114_974_72.bytes_to_human).to eql '10.965 MB'
      end
    end

    context 'when negative' do
      it 'uses the absolute value' do
        expect(-114_974_72.bytes_to_human).to eql '10.965 MB'
      end
    end
  end
end