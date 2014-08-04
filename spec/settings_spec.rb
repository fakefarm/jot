require 'spec_helper'
require 'settings'

RSpec.describe Settings do
  it 'if jot is new, it will initiate a setup wizard'
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

  it 'can update file_location' do
    settings = Settings.new
    # TODO how do I mock out fake test yml file?
    settings.update_file_location = '/Dropbox'
    expect(settings.save_location).to be('/Dropbox')
  end
end
