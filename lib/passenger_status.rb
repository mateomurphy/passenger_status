require 'nokogiri'
require 'passenger_status/sums'
require 'passenger_status/status'
require 'passenger_status/group'
require 'passenger_status/process'
require 'passenger_status/server_socket'

module PassengerStatus
  def self.new(*args)
    Status.new(*args)
  end
end