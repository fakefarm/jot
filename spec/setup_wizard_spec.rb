require 'spec_helper'
require './lib/setup_wizard'

RSpec.describe SetupWizard do
  after(:example) do
    File.delete('./config/boot.yaml') 
    #FileUtils::rm_rf()
    # require 'pry'; binding.pry
  end

  xit 'sets up the jot directory path' do
    # 8/3
    # So many different situations to consider.
    # V1 - hard code the path to store in /Dropbox/jots
    # 
    setup = SetupWizard.new
    allow(setup).to receive(:user_input).and_return('/jots')
    expect(setup.save_location).to eq("#{Dir.pwd}/jots".split(' '))
  end

  it 'single or multiple files' do
    setup = SetupWizard.new
    allow(setup).to receive(:user_input).and_return('multiple')
    expect(setup.file_quantity).to eq('multiple')
  end

  it 'creates a new boot.yaml for new apps' do
    setup = SetupWizard.new
    expect(File.exist?('../config/boot.yml')).to be false
  end
end
