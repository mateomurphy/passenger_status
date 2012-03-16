module PassengerStatus
  class Group
    include Collection
      
    attr_reader :system, :data, :app_root, :name, :environment, :processes
    
    def initialize(system, data)
      @system = system
      @data = data
      @app_root = @data.xpath('.//app_root').first.content
      @name = @data.xpath('.//name').first.content
      @environment = @data.xpath('.//environment').first.content
      @processes = @data.xpath('.//process').map do |group|
        Process.new(system, group)
      end
    end
    
    def children
      @processes
    end
    
  end
end  