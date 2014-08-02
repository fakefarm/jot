require 'spec_helper'
require './jot'

RSpec.describe Jot do

  describe 'saving' do
    it 'creates a new jot file per day'
    it 'defaults to a date header in new logs'
    it 'will write to an existing file by the same title'
    it 'is saved in markdown format'
  end

  describe 'sorting' do
    it 'can sort jots by hash tag'
  end

  describe 'features' do
    it 'accepts a string'
    it 'parses out hash tags'
    it 'on quit, sends user back to previous directory'
    it 'can generate reports based on tag use via rake task'
    it 'accepts a title as an argument'
  end

  describe 'menu options for' do
    it 'a jot'
    it 'application management'
    it 'listing jots'
  end

  describe 'settings' do
    it 'on new file will ask for a path where jots will be saved'
    it 'will ask if single file or multiple files'
  end

  describe 'listing' do
   it 'lists by file name'
   it 'lists by file contents'
   it 'lists a specific file'
  end
end
