require "pry"

class Fibber
  # def initialize(number_requested)
  #
  # end

  def calculate(number_requested)
    pattern = []
    # binding_pry
    number_requested.times do |num|
      if num == 0
        pattern[num] = num
      elsif num == 1
        pattern[num] = pattern[num-1].to_i + num
      else
        pattern[num] = pattern[num-1].to_i + pattern[num-2].to_i
      end
    end
    display(pattern, number_requested)
    pattern
  end

  def display(pattern, number_requested)
    pattern[number_requested]
  end
end

fibber = Fibber.new
fibber.calculate(7)

