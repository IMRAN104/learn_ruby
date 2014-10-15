
def ftoc(f)
  (f - 32)*5.0/9
end

def ctof(c)
  9.0/5*c + 32
end

class Temperature
  def initialize(h)
    if h.has_key?(:f)
      @f = h[:f]
      @c = ftoc(@f)
    elsif h.has_key?(:c)
      @c = h[:c]
      @f = ctof(@c)
    end
  end

  def in_celsius
    @c
  end

  def in_fahrenheit
    @f
  end

  def self.from_celsius(c)
    Temperature.new(:c => c)
  end

  def self.from_fahrenheit(f)
    Temperature.new(:f => f)
  end
end


class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end
