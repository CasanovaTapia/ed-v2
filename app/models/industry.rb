class Industry < ActiveRecord::Base
	validates_uniqueness_of :title
end