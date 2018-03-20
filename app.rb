require 'sinatra/base'
require './lib/memory'
require './database_connection_setup'

class RememberMe < Sinatra::Base
    get '/' do
        @memories = Memory.all
        erb :index
    end

    get '/add-a-new-memory' do
        erb :new_memory
    end

    post '/create-new-memory' do
        params['title'] != '' ? Memory.create(title: params['title'], description: params['description']) : flash[:notice] = "You must give your memory a title."
        redirect '/'
    end

    run! if app_file == $0
end