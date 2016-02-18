require 'rubygems'
require 'bundler/setup'
require 'lockbox'
require 'shoulda-matchers'
require 'webmock/rspec'
require 'vcr'
require 'timecop'

VCR.configure do |config|
  config.cassette_library_dir = "vcr_cassettes"
  config.hook_into :webmock
end

RSpec.configure do |config|
  config.order = 'random'
  config.color = true
  config.add_formatter 'documentation'
end

