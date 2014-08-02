require './settings'

class Init
  attr_reader :jot_directory
  
  def initialize
    @jot_directory = check_for_jot_directory
  end

  def age
    'new jot'
  end

  def check_for_jot_directory
    Settings.new.check_directory
  end
end
