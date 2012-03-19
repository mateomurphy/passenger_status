require 'cocaine'

module PassengerStatus
  class System
    def data
      @data ||= data_command.run
    end
    
    def data_command
      @data_command ||= Cocaine::CommandLine.new('passenger-status', '--show=xml', :swallow_stderr => true)
    end
    
    def kill(pid)
      PassengerStatus.logger.info "Killing process with pid #{pid}"
      `kill -9 #{pid}`
    end
  end
end