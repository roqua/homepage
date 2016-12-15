require 'rake'
require 'dotenv'
require 'dotenv/tasks'
require 'httparty'
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

namespace :roqua do
  desc 'Downloads build from Circle CI'
  task download_build: :dotenv do
    api_url = "https://circleci.com/api/v1.1/project/github/roqua/roqua_frontpage/latest/artifacts?circle-token=#{ENV['CIRCLECI_API_TOKEN']}&branch=master"
    response = HTTParty.get api_url
    artifacts = JSON.parse(response.body)
    if artifacts.any?
      puts `curl -v #{artifacts[0]['url']} > builds/master.zip`
    end
  end
end
