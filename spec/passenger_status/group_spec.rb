require 'spec_helper'

module PassengerStatus
  describe Group do
    subject { PassengerStatus.new(xml_file).groups.first }
    its(:app_root) { should == '/home/neken/www/nkncloud_production/current' }  
    its(:name) { should == '/home/neken/www/nkncloud_production/current' }  
    its(:environment) { should == 'production' }
    its(:'processes.count') { should == 3 }
    its(:rss) { should == 546208 }
    its(:pss) { should == 352636 }
    its(:private_dirty) { should == 285680 }
    its(:swap) { should == 8324 }
    its(:real_memory) { should == 294004 }
    its(:vmsize) { should == 2725944 }
  end
end