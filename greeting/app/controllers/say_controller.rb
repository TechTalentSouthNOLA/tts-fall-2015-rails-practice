class SayController < ApplicationController
  def hello
    right_now = Time.now
    @current_time = right_now.stamp('12:00AM')
    @current_date = right_now.stamp('Monday, February 1, 2015')
  end

  def goodbye
  end
end
