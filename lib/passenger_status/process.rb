module PassengerStatus
  class Process
    
    attr_reader :data, :pid, :gupid, :sessions, :processed, :uptime, :has_metrics, 
      :cpu, :rss, :pss, :private_dirty, :swap, :real_memory, :vmsize, 
      :process_group_id, :command, :connect_password, :server_sockets
    
    def initialize(data)
      @data = data
      @pid = @data.xpath('.//pid').first.content.to_i
      @gupid  = @data.xpath('.//gupid').first.content
      @sessions = @data.xpath('.//sessions').first.content.to_i
      @processed = @data.xpath('.//processed').first.content.to_i
      @uptime = @data.xpath('.//uptime').first.content
      @has_metrics = @data.xpath('.//has_metrics').first.content == 'true'
      @cpu = @data.xpath('.//cpu').first.content.to_i
      @rss = @data.xpath('.//rss').first.content.to_i
      @pss = @data.xpath('.//pss').first.content.to_i
      @private_dirty = @data.xpath('.//private_dirty').first.content.to_i
      @swap = @data.xpath('.//swap').first.content.to_i
      @real_memory = @data.xpath('.//real_memory').first.content.to_i
      @vmsize = @data.xpath('.//vmsize').first.content.to_i
      @process_group_id = @data.xpath('.//process_group_id').first.content.to_i
      @command = @data.xpath('.//command').first.content
      @connect_password = @data.xpath('.//connect_password').first.content
      @server_sockets = @data.xpath('.//server_socket').map do |socket|
        ServerSocket.new(socket)
      end
      
    end
    
  end
end  