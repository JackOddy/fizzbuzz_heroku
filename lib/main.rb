require 'sinatra'
require_relative 'fizzbuzz'

get ('/') do
  erb :fzbz do
    "fizz --> buzz"
  end
end

post ('/') do
  erb :fzbz do
    "#{params[:number]} --> #{fizzbuzz params[:number]}"
  end
end
