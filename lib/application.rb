require_relative 'write'
require_relative 'menu'

class Application
  attr_reader :input

  def initialize
    run
  end

private

  def prompt
    print '=> '
    @input = gets.chomp
  end

  def run
    until input == 'quit'
      prompt
      Menu.new input
    end
  end
end
