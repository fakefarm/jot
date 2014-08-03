guard 'rspec' do
  watch(%r{^spec/(.+).rb$}) do |m|
    "spec/#{m[1]}_spec.rb"
  end

  watch(%r{^lib/(.+).rb$}) do |m|
    "lib/#{m[1]}.rb"
  end
end
