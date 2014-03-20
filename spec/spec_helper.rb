require 'pry'
require 'rr'
require 'vcr'
require 'simplecov'
require 'coveralls'
Coveralls.wear!

require 'movie_stone'

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.profile_examples = 10
  config.order = :random
  config.mock_with :rr
end

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  c.hook_into :webmock
end
