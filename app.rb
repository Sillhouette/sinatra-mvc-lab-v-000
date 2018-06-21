require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = PigLatinizer.new(params[:user_text])
    binding.pry
    erb :results
  end

end
