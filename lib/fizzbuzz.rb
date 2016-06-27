class String
# opens String class to determine whether or not is it actually an integer
def is_integer?; true if Integer(self) rescue false end
# if Integer(self) throws up an error is it not a pure Integer, instead of
# crashing the program the method is rescued and returns false instead
end


class Integer
# open Integer class to insert fzzbzz method.
  def fzzbzz
    str = '' # start with an empty string
    str << 'fizz' if self % 3 == 0 # shovel in 'fizz' if multiple of 3
    str << 'buzz' if self % 5 == 0 # shovel in 'buzz' if multiple of 5
                                   # because of the order of these lines
                                   # will insert both if both conditions
                                   # are met.
    str == '' ? self : str
    # if no string as been shoveled the method will return self.
  end

end

def fizzbuzz(str)
# this method will return an error is the String's is_integer? method returns false
  if str.is_integer?
    str.to_i.fzzbzz   # if the is_interger == true then will convert str to i
                      # and call fzzbzz on it to return fizzbuzz outcome
  else
    "is not a valid integer"
  end
end
