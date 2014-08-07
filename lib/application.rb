require 'settings'

class Application
  def settings_file
    Settings.new.directory
  end
end
