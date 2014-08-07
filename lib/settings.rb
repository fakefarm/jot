require 'yaml'
require 'setup_wizard'

class Settings

  def directory
    get_settings_file
  end

private

  def get_settings_file
    '/Dropbox/jots'
  end

#   attr_accessor :boot_file
# 
#   def initialize
#     load_boot_file
#   end
# 
#   def save_location 
#     boot_file_save_location 
#   end
# 
#   def file_storage
#     boot_file_storage
#   end
# 
# private
# 
#   def new_account?
#     File.exists?('../config/boot.yaml')
#   end
#   
#   def load_boot_file
#     if new_account?
#       @boot_file = YAML.load_file('../config/boot.yaml')
#     else
#       setup_wizard
#     end
#   end
# 
#   def boot_file_save_location
#     boot_file['settings']['save_location']
#   end
#   
#   def boot_file_storage
#     boot_file['settings']['file_storage']
#   end
# 
#   def setup_wizard
#     SetupWizard.new
#   end 
# 
#   def status
#     boot_file['settings']['status']
#   end
end
