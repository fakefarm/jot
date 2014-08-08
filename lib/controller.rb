require_relative 'write'

class Controller
  attr_reader :input

  def initialize input
    @input = input
    route
  end

  def route
    case input 
      when 'menu'; menu
      else write
    end
  end

  def menu
    puts 'this is the menu'
  end

  def write
    jot = Write.new input
    jot.save
  end
end
