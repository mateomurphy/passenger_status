require 'spec_helper'

module PassengerStatus
  describe Status do
    subject { PassengerStatus.new(test_system) }
    specify { subject.data.should_not be_nil }
    its(:active) { should == 0 }
    its(:count) { should == 3 }
    its(:max) { should == 6 }
    its(:global_queue_size) { should == 0 }
    its(:'groups.count') { should == 1 }
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