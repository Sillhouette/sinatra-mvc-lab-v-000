require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = PigLatinizer.new.initiate(params[:user_text])
    erb :results
  end

end
