require 'rake'
require 'dotenv'
Dotenv.load

 def run_ftp_command
  login = ENV['LOGIN']
  password = ENV['PASSWORD']
  ftp_host = ENV['FTP_HOST']
  port = ENV['PORT']
  deploy_to = ENV['DEPLOY_TO']
  commando = "curl -v --ftp-ssl -T \"output/stylesheets/test.css\" ftp://#{login}:#{password}@#{ftp_host}:#{port}#{deploy_to}"
  # puts commando
  puts `#{commando}`

end

task :deploy_frontpage do
  run_ftp_command
end
