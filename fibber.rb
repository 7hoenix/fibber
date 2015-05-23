require "pry"

class Fibber
  # def initialize(number_requested)
  #
  # end

  def input
    puts "How many numbers do you want the sequence to be?"
    number_requested = gets.chomp.to_i
    puts "Which format would you like to see it in (options are 1, 2 or 3)?"
    output_requested = gets.chomp.to_i
    sequence(number_requested, output_requested)
  end

  def sequence(number_requested, output_requested)
    seq = calculate(number_requested)
    (display(seq, number_requested, output_requested))
  end

  def calculate(number_requested)
    return nil if number_requested == 0
    pattern = []
    number_requested.times do |num|
      if num == 0
        pattern[num] = num
      elsif num == 1
        pattern[num] = pattern[num-1].to_i + num
      else
        pattern[num] = pattern[num-1].to_i + pattern[num-2].to_i
      end
    end
    pattern
  end

  def display(sequence, number_requested, output_requested)
    if output_requested == 1
      number_requested.times do |num|
        new_num = num + 1
        if new_num % 5 == 0
          puts "#{sequence[num]} "
        else
          print "#{sequence[num]} "
        end
      end
    elsif output_requested == 2
      number_requested.times do |num|
        new_num = num + 1
        centered = sequence[num].to_s.center(4)
        if new_num % 5 == 0
          puts "#{centered} "
        else
          print "#{centered} "
        end
      end
    elsif output_requested == 3
      number_requested.times do |num|
        new_num = num + 1
        padding = sequence.last.to_s.length.to_i + 1
        centered = sequence[num].to_s.center(padding)
        if new_num % 5 == 0
          puts "#{centered} "
        else
          print "#{centered} "
        end
      end

    end
  end
end

fibber = Fibber.new
fibber.input
