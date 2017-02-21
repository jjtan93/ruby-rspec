def measure
  time = Time.now
  yield
  time2 = Time.now
  
  time2.sec - time.sec
end