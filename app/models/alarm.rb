class Alarm < ActiveRecord::Base
  attr_accessible :creator, :descr, :disabler, :enable
	
	has_and_belongs_to_many :answers
end
