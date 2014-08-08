require 'spec_helper'
require 'application'
require 'settings'


RSpec.describe Application do
  it 'loads setttings' do
    app = Application.new
    expect(app.settings_file).to eq '/jots'
  end
end

