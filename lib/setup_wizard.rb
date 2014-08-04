require 'yaml'

class SetupWizard

  def save_location
    puts "Where do you want to store jots?"
    puts "example: /Dropbox/jots"
    user_input
  end

  def file_management
    puts "Do you want jots in a single or multiple files?"
    puts "Respond with: 'single' or 'multiple'"
    user_input
  end
  
  def create_boot_file
    yaml = {settings: {}}
    yaml[:settings][:status] = 'new'
    yaml[:settings][:save_location] = '/foo'
    File.open('../config/foo.yaml', 'w') { |f| f.write yaml.to_yaml }
  end

private

  def user_input
    input = gets.chomp
  end
end
