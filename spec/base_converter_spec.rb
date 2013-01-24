require_relative '../lib/base_converter'
require 'minitest/autorun'

describe BaseConverter do
  before do
    @number = 42069
  end

  describe '#converter' do
    it 'converts from base 10 to base 2' do
      number = BaseConverter.new.convert 0, 2

      number.must_equal 0
    end

    it 'converts from base 10 to base 2' do
      number = BaseConverter.new.convert 1, 2

      number.must_equal 1
    end

    it 'converts from base 10 to base 2' do
      number = BaseConverter.new.convert 2, 2

      number.must_equal 10
    end

    it 'converts from base 10 to base 2' do
      number = BaseConverter.new.convert @number, 2

      number.must_equal 1010010001010101
    end

    it 'converts from base 10 to base 8' do
      number = BaseConverter.new.convert @number, 8

      number.must_equal 122125
    end
  end
end
