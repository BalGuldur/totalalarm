# encoding: utf-8
class AlarmsController < ApplicationController
  def index
		@alarm=Alarm.find_by_enable(true)
		if @alarm==nil
			@alarm=Alarm.new
		end
		@gransw=Granswer.find_all_by_enable(true)
  end
	
	def update
	end

	def disable
		@alarm=Alarm.find_by_enable(true)
		@alarm.enable=false
		@alarm.save
		redirect_to alarms_path, notice: 'Alarm was successfuly disabled.' 
	end

	def create
		@alarm=Alarm.new(params[:alarm])
		@answers=params[:answers]
		@answers.each do |answer_id|
			@alarm.answers<<Answer.find(answer_id)
		end
		@alarm.enable=true
		respond_to do |format|
			if @alarm.save
				format.html { redirect_to alarms_path, notice: 'Alarm was successfully created.' }
				format.json { render json: @alarm, status: :created, location: @alarm }
			else
				format.html { render action: "index" }
				format.json { render json: @alarm.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
	end
end
