require 'sinatra/base' 
require 'sinatra/reloader' 

class RockPaperScissors < Sinatra::Base
  configure :development do # forgot this step
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World'
  end
  
  run! if app_file == $0
end
