class Industry < ActiveRecord::Base
	validates_uniqueness_of :title
	has_many :profiles
end
