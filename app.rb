require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
   erb :user_input
  end

  post '/piglatinize' do
    @sentence = params[:user_phrase]
    @piggy = PigLatinizer.new
    erb :piglatinize

  end

end
