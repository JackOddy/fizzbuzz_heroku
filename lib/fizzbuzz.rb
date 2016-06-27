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
