

class Dictionary
  def initialize
    @h = {}
  end

  def entries
    @h
  end

  def add(h)
    if h.is_a?(Hash)
      @h.merge!(h)
    else
      @h.merge!(h => nil)
    end
  end

  def keywords
    @h.keys.sort
  end

  def include?(k)
    @h.has_key?(k)
  end

  def find(q)
    r = {}
    @h.each do |k,v|
      if k.start_with?(q)
        r[k] = v
      end
    end
    r
  end

  def printable
    a = []
    @h.keys.sort.each do |k|
      a << "[#{k}] \"#{@h[k]}\""
    end
    a.join("\n")
  end
end
