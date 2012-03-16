require 'spec_helper'

module PassengerStatus
  describe ServerSocket do
    subject { PassengerStatus.new(test_system).groups.first.processes.first.server_sockets.first }    
    its(:name) { should == 'http' }
    its(:address) { should == '127.0.0.1:36577' }
    its(:type) { should == 'tcp' }
  end
end