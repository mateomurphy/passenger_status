$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'passenger_status'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

def test_system
  xml_file = File.open(File.join(File.dirname(__FILE__), 'fixtures', 'passenger_status.xml'))
  PassengerStatus::TestSystem.new(xml_file)
end

RSpec.configure do |config|
  
end
