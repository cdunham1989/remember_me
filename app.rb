require 'sinatra/base'

class RememberMe < Sinatra::Base
    get '/' do
        memories = [
                    "Holiday to Mexico",
                    "Our Anniversary",
                    "Christmas at Home"
                    ]

        memories.join
    end

    run! if app_file == $0
end