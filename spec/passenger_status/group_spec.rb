require 'spec_helper'

module PassengerStatus
  describe Group do
    subject { PassengerStatus.new(test_system).groups.first }
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
    
    specify do
      subject.prune(100000)
      subject.system.commands.should == ["kill -9 13851", "kill -9 13878"]
    end    

    specify do
      subject.prune(200000)
      subject.system.commands.should == []
    end    
  end
end