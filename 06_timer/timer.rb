class Timer
  #write your code here
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    hours = @seconds / 3600
    mins = (@seconds / 60) % 60
    secs = @seconds % 60

    # if hours.to_s.length == 1
    #   hours = "0#{hours}"
    # end
    # if mins.to_s.length == 1
    #   mins = "0#{mins}"
    # end

    # if secs.to_s.length == 1
    #   secs = "0#{secs}"
    # end

    "#{padded(hours)}:#{padded(mins)}:#{padded(secs)}"
  end

  def padded (num)
    "%02d" % num
  end

end
