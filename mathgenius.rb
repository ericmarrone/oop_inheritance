require_relative 'multilinguist'

class MathGenius < Multilinguist

  def report_total(numbers)
    self.say_in_local_language("The total is #{numbers.sum}")
  end
end

me = MathGenius.new
puts me.report_total([23, 45, 676, 34, 5778, 4, 23, 5465])
me.travel_to("India")
puts me.report_total([23, 45, 676, 34, 5778, 4, 23, 5465])
me.travel_to("Italy")
puts me.report_total([23, 45, 676, 34, 5778, 4, 23, 5465])
