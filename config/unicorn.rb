worker_processes 4
listen "/tmp/.sock", :backlog => 64
listen 5000, :tcp_nopush => true
timeout 30
pid "/var/run/unicorn.pid"
