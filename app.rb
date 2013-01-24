require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/*.css' do |path|
  content_type 'text/css', :charset => 'utf-8'
  sass path.to_sym, :sass => {:load_paths => options.views}
end

