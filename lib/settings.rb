require 'yaml'
require './setup_wizard'

class Settings
  attr_accessor :boot_file

  def initialize
    if File.exists?('../config/boot.yaml')
      @boot_file = YAML.load_file('../config/boot.yml')
    else
      setup_wizard
    end
  end

  def save_location # this method acts as public api to ensure clarity of class
    boot_file_save_location # the actual implementation details are tucked in private
  end

  def file_storage
    boot_file_storage
  end

  def update_file_location(location)
    boot_file['settings']['save_location'] = location
    File.open('../config/boot.yml', 'w') { |f| f.write boot_file.to_yaml }
  end

private

  def boot_file_save_location
    boot_file['settings']['save_location']
  end
  
  def boot_file_storage
    boot_file['settings']['file_storage']
  end

  def setup_wizard
    SetupWizard.new
  end 

  def status
    boot_file['settings']['status']
  end
end
