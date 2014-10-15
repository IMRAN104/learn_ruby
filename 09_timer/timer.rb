

class Timer
  def seconds=(sec)
    @seconds = sec
  end

  def seconds
    @seconds || 0
  end

  def time_string
    h = @seconds / 3600
    m = (@seconds - h*3600) / 60
    s = @seconds - h*3600 - m*60
    "%02d:%02d:%02d" % [h,m,s]
  end
end
