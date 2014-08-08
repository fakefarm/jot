class Controller
  attr_reader :input

  def initialize input
    @input = input
    route
  end

  def route
    puts 'here is your input'
    puts input
  end
end
