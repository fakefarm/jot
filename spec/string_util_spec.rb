require 'spec_helper'
require './lib/string_util'

RSpec.describe String do
 describe 'iterm colors' do
   it 'returns bash code for cyan ' do
     string = 'this is my string'
     expect(string.cyan).to eq("\e[36mthis is my string\e[0m")
   end
 end
end

