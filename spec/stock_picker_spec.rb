# frozen_string_literal: true

require 'rspec'
require './src/stock_picker'

describe StockPicker do
  describe 'stock_picker' do
    it 'Lesson Example' do
      stock_prices = '17,3,6,9,15,8,6,1,10'
      expected = [1, 4, 12]
      expect(StockPicker.new.stock_picker(stock_prices)).to eq(expected)
    end
  end
end
