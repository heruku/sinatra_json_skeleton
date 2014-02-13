require ::File.expand_path('../config/environment',  __FILE__)

require "sinatra/activerecord/rake"

desc 'Start IRB with application environment loaded'
task "console" do
  exec "irb -r./config/environment"
end