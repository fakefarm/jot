require 'spec_helper'
require 'settings'

RSpec.describe Settings do
  it 'locates directory of stored jots' do
    settings = Settings.new
    expect(settings.directory).to eq '/Dropbox/jots'
  end
end
