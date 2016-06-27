require 'sinatra'

class String

def is_integer?; true if Integer(self) rescue false end

end


class Integer

  def fzzbzz
    str = ''
    str << 'fizz' if self % 3 == 0
    str << 'buzz' if self % 5 == 0
    str == '' ? self : str
  end

end

def fizzbuzz(str)

  if str.is_integer?
    str.to_i.fzzbzz
  else
    "is not a valid integer"
  end

end

get ('/') do
erb :layout do
  "<h1><font size='7'>#{fizzbuzz '15'}</font></h1>
    <p> Please enter a number to fizzbuzz it.</p>
    <br>
    <form action = '/' method='post'>
      <input type= 'text' name ='number'>
      <input type ='submit'>
      <input type ='reset'>
    </form>"
  end
end

post ('/') do
  erb :layout do
    "<h1><font size='7'>#{fizzbuzz '15'}</font></h1>
    <p> #{params[:number]} --> #{fizzbuzz params[:number]}</p>
    <p> Please enter a number to fizzbuzz it.</p>
    <br>
    <form action = '/' method='post'>
      <input type= 'text' name ='number'>
      <input type ='submit'>
      <input type ='reset'>
    </form>"
  end
end
