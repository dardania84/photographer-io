if ENV['localhost:6379']
  uri = URI.parse(ENV[ENV['localhost:6379']])
  Redis.current = Redis.new(host: uri.host, port: uri.port, password: uri.password)
end
