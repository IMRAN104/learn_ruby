

def measure(n=1)
  t0 = Time.now
  n.times do
    yield
  end
  t1 = Time.now
  (t1 - t0)/n
end
