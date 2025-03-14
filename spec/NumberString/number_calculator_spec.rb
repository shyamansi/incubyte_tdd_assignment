require 'rails_helper'

  RSpec.describe NumberCalculator, type: :service do
    describe '#add' do
      it 'returns 0 for an empty string' do
        expect(NumberCalculator.new.add("")).to eq(0)
      end
      it 'returns the number itself for a single number' do
        expect(NumberCalculator.new.add("5")).to eq(5)
      end
    end
  end
