require 'rails_helper'

  RSpec.describe NumberCalculator, type: :service do
    describe '#add' do
      it 'returns 0 for an empty string' do
        expect(NumberCalculator.new.add("")).to eq(0)
      end
      it 'returns the number itself for a single number' do
        expect(NumberCalculator.new.add("5")).to eq(5)
      end
      it 'returns the sum of two comma-separated numbers' do
       expect(NumberCalculator.new.add("1,2")).to eq(3)
      end
       it 'returns the sum of multiple comma-separated numbers' do
        expect(NumberCalculator.new.add("1,2,3,4")).to eq(10)
      end
    end
  end
