class Alarm < ActiveRecord::Base
  attr_accessible :creator, :descr, :disabler, :enable
end
