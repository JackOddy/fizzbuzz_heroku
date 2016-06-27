require 'sinatra'

class Integer

  def fizzbuzz
    str = ''
    str << 'fizz' if self % 3 == 0
    str << 'buzz' if self % 5 == 0
    str == '' ? self : str
  end

end


get ('/') do
erb :layout do
  "<p> Please enter a number to fizzbuzz it.</p>
    <br>
    <form action = '/' method='post'>
      <input type= 'text' name ='number'>
      <input type ='submit'>
    </form>"
  end
end

post ('/') do
  erb :layout do
    "<p> #{params[:number]} --> #{params[:number].to_i.fizzbuzz}</p>
    <p> Please enter a number to fizzbuzz it.</p>
    <br>
    <form action = '/' method='post'>
      <input type= 'text' name ='number'>
      <input type ='submit'>
    </form>"
  end
end
