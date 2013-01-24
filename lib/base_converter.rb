class BaseConverter
  LETTERS = %{abcdefghijklmnopqrstuvwxyz}

  def initialize
    @power = 0
  end

  def convert number, base
    raise UnconvertableError if base > 36
    find_first_power_of_base_more_than_number number, base
    concatenate_digits number, base
  end

  private

  def find_first_power_of_base_more_than_number number, base
    return @power = 1 if number == 0
    until base**@power > number
      @power += 1
    end
  end

  def concatenate_digits number, base
    (0..@power - 1).to_a.reverse.inject('') do |memo, power|
      result = number/(base**power)
      number -= result*(base**power)
      result = convert_to_letter result if result > 9
      memo += result.to_s
    end
  end

  def convert_to_letter result
    LETTERS[result - 10]
  end
end

class UnconvertableError < StandardError; end
