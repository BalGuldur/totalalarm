class Answer < ActiveRecord::Base
  attr_accessible :descr, :enable
	belongs_to :granswer
end
