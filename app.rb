require 'sinatra/base'
require './lib/memory'

class RememberMe < Sinatra::Base
    get '/' do
        @memories = Memory.all
        erb :index
    end

    get '/add-a-new-memory' do
        erb :new_memory
    end

    post '/create-new-memory' do
        Memory.creat(title: params['title'], description: params['description'])
        redirect '/'
    end

    run! if app_file == $0
end