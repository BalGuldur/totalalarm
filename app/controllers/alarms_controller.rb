class AlarmsController < ApplicationController
  def index
		@alarm=Alarm.find_by_enable(true)
		if @alarm==nil
			@alarm=Alarm.new
		end
  end
end
