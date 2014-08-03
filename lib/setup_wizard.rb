class SetupWizard

  def save_location
    puts "Where do you want to store jots?"
    puts "example: /Dropbox/jots"
    user_input
  end

  def file_management
    puts "Do you want jots in a single or multiple files?"
    puts "Respond with: single or multiple"
    user_input
  end

private

  def user_input
    input = gets.chomp
  end
end
