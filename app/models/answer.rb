class Answer < ActiveRecord::Base
  attr_accessible :descr, :enable

	has_and_belongs_to_many :alarms
	belongs_to :granswer
end
