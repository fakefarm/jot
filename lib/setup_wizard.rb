require 'yaml'
require 'fileutils'

class SetupWizard
  
  def initialize 
    file_quantity
    create_boot_file
  end

  def save_location
    # puts "Where do you want to store jots?"
    # puts "example: /Dropbox/jots"
    # puts "(Your current location is #{Dir.pwd})"
    # FileUtils::mkdir_p(Dir.pwd + @location)
    @location = '/Dropbox/jots'
  end

  def file_quantity
    puts "Do you want jots in a single or multiple files?"
    puts "Respond with: 'single' or 'multiple'"
    @quantity = user_input
  end
  
  def create_boot_file
    yaml = {settings: {}}
    yaml[:settings][:save_location] = @location 
    yaml[:settings][:file_quantity] = @quantity
    File.open('./config/boot.yaml', 'w') { |f| f.write yaml.to_yaml }
  end

private

  def user_input
    input = gets.chomp
  end
end
