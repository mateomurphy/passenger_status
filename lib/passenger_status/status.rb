module PassengerStatus
  class Status
    include Collection
  
    attr_reader :system, :data, :active, :count, :max, :global_queue_size, :groups
  
    def initialize(system)
      @system = system
      @data = Nokogiri::XML::Document.parse(system.data)
      @active = @data.xpath('.//active').first.content.to_i
      @count = @data.xpath('.//count').first.content.to_i
      @max = @data.xpath('.//max').first.content.to_i
      @global_queue_size = @data.xpath('.//global_queue_size').first.content.to_i
    
      @groups = @data.xpath('.//group').map do |group|
        Group.new(system, group)
      end
    end
  
    def children
      @groups
    end
  end
end