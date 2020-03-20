require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reverse' do
    binding.pry
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reverse
  end

  post '/reverse' do
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end
