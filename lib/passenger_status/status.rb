module PassengerStatus
  class Status
    include Sums
  
    attr_reader :data, :active, :count, :max, :global_queue_size, :groups
  
    def initialize(data)
      @data = Nokogiri::XML::Document.parse(data)
      @active = @data.xpath('.//active').first.content.to_i
      @count = @data.xpath('.//count').first.content.to_i
      @max = @data.xpath('.//max').first.content.to_i
      @global_queue_size = @data.xpath('.//global_queue_size').first.content.to_i
    
      @groups = @data.xpath('.//group').map do |group|
        Group.new(group)
      end
    
    end
  
    def children
      @groups
    end
  end
end