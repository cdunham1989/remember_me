require 'sinatra/base'
require './lib/memory'

class RememberMe < Sinatra::Base
    get '/' do
        @memories = Memory.all
        erb :index
    end

    run! if app_file == $0
end