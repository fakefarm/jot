require 'spec_helper'
require './lib/write'
require './lib/settings'

RSpec.describe Writer do
  it 'saves to directory' do
    jot = 'this is my jot'
    write = Write.new jot
    current_contents = Dir.entries('./jots').count
    write.save

    expect(write.save)
  end
end
