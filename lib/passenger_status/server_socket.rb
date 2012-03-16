module PassengerStatus
  class ServerSocket
    attr_reader :system, :data, :name, :address, :type
    
    def initialize(system, data)
      @system = system
      @data = data
      @name = @data.xpath('.//name').first.content
      @address = @data.xpath('.//address').first.content
      @type = @data.xpath('.//type').first.content
    end
    
  end
end  