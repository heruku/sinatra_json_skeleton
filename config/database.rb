Dir[APP_ROOT.join('models', '*.rb')].each do |model_file|
  filename = File.basename(model_file).gsub('.rb', '')
  autoload ActiveSupport::Inflector.camelize(filename), model_file
end

db = URI.parse("postgres://localhost/#{APP_NAME}_#{Sinatra::Application.environment}")

ActiveRecord::Base.establish_connection(
  :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  :host     => db.host,
  :database => db.path[1..-1],
  :encoding => 'utf8`'
)