module PassengerStatus
  class Group
    include Sums
      
    attr_reader :data, :app_root, :name, :environment, :processes
    
    def initialize(data)
      @data = data
      @app_root = @data.xpath('.//app_root').first.content
      @name = @data.xpath('.//name').first.content
      @environment = @data.xpath('.//environment').first.content
      @processes = @data.xpath('.//process').map do |group|
        Process.new(group)
      end
    end
    
    def children
      @processes
    end
    
  end
end  