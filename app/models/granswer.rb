class Granswer < ActiveRecord::Base
  attr_accessible :descr, :enable, :name
	has_many :answers
end
