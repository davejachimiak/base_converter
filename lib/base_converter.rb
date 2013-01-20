class BaseConverter
  def initialize
    @power = 0
  end

  def convert number, base
    find_first_power_of_base_more_than_number number, base
    concatenate_digits number, base
  end

  private

  def find_first_power_of_base_more_than_number number, base
    until base**@power >= number
      @power += 1
    end
  end

  def concatenate_digits number, base
    (0..@power - 1).to_a.reverse.inject('') do |memo, power|
      result = number/(base**power)
      number -= result*(base**power)
      memo += result.to_s
    end.to_i
  end
end
