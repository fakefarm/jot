require 'spec_helper'
require 'settings'

RSpec.describe Settings do
  it 'if jot is new, it will initiate a setup wizard' do
    settings = Settings.new
    allow(settings).to receive(setup_wizard).and_return('')
    expect(settings.new_account?).to eq true
  end

  it 'if existing jot, it will not initiate setup wizard' do
    settings = Settings.new
    allow(settings).to receive(:new_account?).and_return false
    expect(settings.setup_wizard).not.to have_been_called
  end

  it 'locates directory for storage' do
    settings = Settings.new
    #TODO 
    # Is it okay if I mockout the private methods from the object under test?
    allow(settings).to receive(:boot_file_save_location).and_return('/Desktop')
    expect(settings.save_location).to eq('/Desktop')
  end

  it 'shows single or multiple file preference' do
    settings = Settings.new
    allow(settings).to receive(:boot_file_storage).and_return('multiple')
    expect(settings.file_storage).to eq('multiple')
  end

  xit 'can update file_location' do
    settings = Settings.new
    # TODO how do I mock out fake test yml file?
    settings.update_file_location = '/Dropbox'
    expect(settings.save_location).to be('/Dropbox')
  end
end
