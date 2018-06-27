require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battler!'
  end

  run! if app_file == $PROGRAM_NAME
end
