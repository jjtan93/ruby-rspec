class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def time_string
    sec = seconds % 60
    min = (seconds / 60) % 60
    hrs = seconds / (60 * 60)

    format("%02d:%02d:%02d", hrs, min, sec)
  end
end