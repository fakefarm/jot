require 'spec_helper'
require './jot'

# TODO how do I test a ruby executable?
RSpec.describe Jot do

  it 'initializes the app' do
    jot = Jot.new
    expect(jot.loaded?).to be true
  end
end
