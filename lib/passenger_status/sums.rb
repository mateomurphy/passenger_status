module PassengerStatus
  module Sums
    def rss
      @rss ||= children.inject(0) { |sum, o| sum + o.rss }
    end      
  
    def pss
      @pss ||= children.inject(0) { |sum, o| sum + o.pss }      
    end
  
    def private_dirty
      @private_dirty ||= children.inject(0) { |sum, o| sum + o.private_dirty }      
    end      
  
    def swap
      @swap ||= children.inject(0) { |sum, o| sum + o.swap }      
    end      
  
    def real_memory
      @real_memory ||= children.inject(0) { |sum, o| sum + o.real_memory }      
    end
  
    def vmsize
      @vmsize ||= children.inject(0) { |sum, o| sum + o.vmsize }      
    end    
  end
end  