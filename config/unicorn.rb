worker_processes 3 # amount of unicorn workers to spin up
timeout 60        # restarts workers that hang for 30 seconds
preload_app true

before_fork do |server, worker|
  # trying something
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
    Rails.logger.info('Disconnected from ActiveRecord')
  end

  sleep 1
end

after_fork do |server, worker|
  puts ">> PID in after_fork: #{Process.pid}"
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end
end