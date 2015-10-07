class Profile < ActiveRecord::Base
  belongs_to :industry
  belongs_to :city
end
