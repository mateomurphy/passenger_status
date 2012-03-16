require 'nokogiri'
require 'passenger_status/sums'
require 'passenger_status/status'
require 'passenger_status/group'
require 'passenger_status/process'
require 'passenger_status/server_socket'

module PassengerStatus
  autoload :System, 'passenger_status/system'
  autoload :TestSystem, 'passenger_status/test_system'  
  
  def self.new(system = System)
    Status.new(system)
  end
end