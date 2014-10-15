
LITTLE_WORDS = ['a', 'an', 'and', 'over', 'the', 'in', 'of']

def titleize(s)
  t = s.split.map { |x|
    LITTLE_WORDS.include?(x) ? x : x.capitalize
  }
  t.first.capitalize!
  t.join(' ')
end

class Book
  def title=(t)
    @title = titleize(t)
  end

  def title
    @title
  end
end
