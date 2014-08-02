require 'spec_helper'
require './init'

RSpec.describe Init do
  
  it 'is new if there is no boot.yml file' do
    init = Init.new
    expect(init.age).to eq('new jot')
  end

  it 'returns a directory if jot is already setup' do
    init = Init.new
    expect(init.jot_directory).to eq('/Desktop/jots')
  end

  it 'returns empty string if jot is not setup' do
     init = Init.new
     expect(init.jot_directory).to eq('')
  end
end
