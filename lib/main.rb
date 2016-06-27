require 'sinatra'
                  # uses sinatra framework
require_relative 'fizzbuzz'
                  # requires class extensions to allow for FizzBuzz process

get ('/') do # when loading homepage will load fzbz, which will yield the
             # the string "fizz --> buzz" as a place holder to preserve
             # layout consistency on subsequent displays.
             # the fzbz.erb will be yielded in the layout.erb because that is
             # how sinatra works.
  erb :fzbz do
    "fizz --> buzz"
  end
end

post ('/') do
  erb :fzbz do # when submitted the form on the home page (or any page as it is
               # the same form that is yielded, which posts to '/' - the root)
               # the page will yield exactly the same but instead of the
               # 'fizz --> buzz' string, it will have the number entered with
               # what the required fizzbuzz method returns.
    "#{params[:number]} --> #{fizzbuzz params[:number]}"
  end
end
