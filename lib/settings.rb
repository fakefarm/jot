require 'yaml'
require './lib/setup_wizard'

class Settings
  attr_accessor :boot_file

  def initialize
    @boot_file = YAML.load_file('config/boot.yml')
    run_setup_wizard?
  end

  def save_location
    boot_file_save_location
  end

  def file_storage
    boot_file_storage
  end

private

  def boot_file_save_location
    boot_file['settings']['save_location']
  end
  
  def boot_file_storage
    boot_file['settings']['file_storage']
  end

  def new_account?
    status == 'new'
  end

  def run_setup_wizard?
    setup_wizard if new_account?
  end

  def setup_wizard
    wizard = SetupWizard.new
    #TODO - write these answers to boot.yml
    @location = wizard.save_location
    @files = wizard.file_management
  end 

  def status
    boot_file['settings']['status']
  end
end
