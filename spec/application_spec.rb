require 'spec_helper'
require 'application'
require 'settings'


RSpec.describe Application do
  it 'loads setttings' do
    app = Application.new
    # TODO - proper syntax below
    #     Object.any_instance.stub(:foo).and_return(:return_value)
    double = double("Settings")
    double.stub(:directory).and_return('settings.yaml')
    expect(app.settings_file).to eq 'settings.yaml'
  end
end

