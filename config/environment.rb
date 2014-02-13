require 'sinatra'
require 'sinatra/activerecord'
require 'json'



APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

require APP_ROOT.join('config', 'database')