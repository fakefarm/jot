require 'yaml'

class Settings
  def check_directory
    settings = YAML.load_file('config/boot.yml')
    settings['settings']['new']
  end

  def run_setup_wizard
    puts 'running setup wizard'
  end
end
