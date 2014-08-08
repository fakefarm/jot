require_relative 'settings'

class Write
  attr_reader :settings, :jot

  def initialize jot
    @settings = Settings.new
    @jot = jot
  end

  def save
    File.open(file, 'a+') do |jot|
      jot.puts ""
      jot.write @jot
    end
  end

private

  def file
    settings.directory + settings.file_name
  end

end
