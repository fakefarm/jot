# #!/usr/bin/env ruby -w

require './lib/string_util'
require './lib/menu'

class Jot

  def initialize(title)
    @title = title
    puts 'Jot a note...'.gray
    new 
  end
  
  def index
    @entries ||= entries
  end

  def entries
    path = jot_filepath
    Dir.entries(path).each do |entry|
      if File.extname(entry) == '.markdown'
        jot_title(entry)
        file = File.open(path + "/" + entry)
        formatted_line(file)
      end
    end
  end

  def formatted_line(file)
    file.each do |line|
      line_style(line)
    end
  end
  
  def line_style
    line = @input
    if line.include?('#')
      hash_index = line.index('#')
      print line[0..hash_index].chop
      hashes = line.scan(/#\w*/)
      hashes.map { |hash| print " " + hash.cyan }
      print "\n"
    else
      puts line.chomp
    end
  end

  def new
    print '=> '.red
    @input = gets.chomp
    filter_entry
  end

  def create
    save
    line_style 
    menu
    new
  end

private

  def title?
    true if ARGV.size > 0
  end

  def jot_title(entry)
    print "\n"
    basename = entry.split('.')[0]
    puts basename
    basename.length.times do
      print '-'
    end
    print '-'
    print "\n"
  end

  def save
    unless title?
      File.open("#{jot_filepath}/#{Time.now.strftime("%F")}.markdown", 'a+') do |jot|
        jot.write "\n"
        jot.write @input
      end
    else
      File.open("#{jot_filepath}/#{title}.markdown", 'a+') do |jot|
        jot.write "\n"
        jot.write @input
      end
    end
  end 

  def filter_entry
    case @input.downcase
      when 'm' then menu
      when 'i' then index
      else create
    end
  end

  def jot_filepath
    @filepath ||= File.join(Dir.home, 'Dropbox', 'jots')
  end

  def menu
    @menu ||= Menu.new.main
  end
end
