require 'spec_helper'

module PassengerStatus
  describe Process do
    subject { PassengerStatus.new(xml_file).groups.first.processes.first }
    its(:pid) { should == 13851 }
    its(:gupid) { should == '152b46d-SHlh4vazuA0' }
    its(:sessions) { should == 0 }
    its(:processed) { should == 73 }
    its(:uptime) { should == '10m 56s' }
    its(:has_metrics) { should == true }
    its(:cpu) { should == 1 }
    its(:rss) { should == 185076 } 
    its(:pss) { should == 120851 }
    its(:private_dirty) { should == 98888 }
    its(:swap) { should == 2288 }
    its(:real_memory) { should == 101176 }
    its(:vmsize) { should == 909816 }
    its(:process_group_id) { should == 21947 }
    its(:command) { should == 'Rack: /home/neken/www/nkncloud_production/current' }
    its(:connect_password) { should == 'nu9GpKfJBMkFXk7ARUskl7EU99hYlpbwDAuUgT0SEmj' }
    its(:'server_sockets.count') { should == 2 }
  end
end