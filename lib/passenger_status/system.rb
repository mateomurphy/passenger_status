module PassengerStatus
  class System
    def data
      `passenger-status --show=xml`
    end
    
    def kill(pid)
      `kill -9 #{pid}`
    end
  end
end