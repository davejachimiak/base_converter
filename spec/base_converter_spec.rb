require_relative '../lib/base_converter'
require 'minitest/autorun'

describe BaseConverter do
  before do
    @number = 42069
  end

  describe '#converter' do
    it 'converts from base 10 to base 2' do
      number = BaseConverter.new.convert 0, 2

      number.must_equal '0'
    end

    it 'converts from base 10 to base 2' do
      number = BaseConverter.new.convert 1, 2

      number.must_equal '1'
    end

    it 'converts from base 10 to base 2' do
      number = BaseConverter.new.convert 2, 2

      number.must_equal '10'
    end

    it 'converts from base 10 to base 2' do
      number = BaseConverter.new.convert @number, 2

      number.must_equal '1010010001010101'
    end

    it 'converts from base 10 to base 8' do
      number = BaseConverter.new.convert @number, 8

      number.must_equal '122125'
    end

    it 'converts from base 10 to base 16' do
      number = BaseConverter.new.convert @number, 16

      number.must_equal 'a455'
    end

    it 'converts from base 10 to base 11' do
      number = BaseConverter.new.convert 26, 11

      number.must_equal '24'
    end

    it 'converts from base 10 to base 16' do
      number = BaseConverter.new.convert 12, 16

      number.must_equal 'c'
    end

    it 'converts from base 10 to base 36' do
      number = BaseConverter.new.convert 11, 36

      number.must_equal 'b'
    end

    it 'acounts for bases above 36' do
      ->{ BaseConverter.new.convert 1828391, 37 }.must_raise UnconvertableError
    end
  end
end
