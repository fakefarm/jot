require_relative 'write'

class Application
  attr_reader :menu, :settings

  def initialize
    prompt
  end

  def prompt
    print '=> '
    jot = gets.chomp
    write jot
  end

  def write jot
    j = Write.new jot
    j.save
  end 
end
