require 'spec_helper'
require './lib/setup_wizard'

RSpec.describe SetupWizard do
  it 'sets up the jot directory path' do
    setup = SetupWizard.new
    allow(setup).to receive(:user_input).and_return('/Desktop')
    expect(setup.save_location).to eq('/Desktop')
  end

  it 'single or multiple files' do
    setup = SetupWizard.new
    allow(setup).to receive(:user_input).and_return('multiple')
    expect(setup.file_management).to eq('multiple')
  end

  it 'creates a new boot.yaml for new apps' do
    setup = SetupWizard.new
    expect(File.exist?('../config/boot.yml')).to be true
  end
end
