module PassengerStatus
  class TestSystem
    
    attr_reader :commands
    
    def initialize(data)
      @data = data
      @commands = []
    end

    def data
      @data
    end
    
    def kill(pid)
      @commands << "kill -9 #{pid}"
    end
  end
end