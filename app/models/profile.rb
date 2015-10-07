class Profile < ActiveRecord::Base
  belongs_to :industry
  belongs_to :city
  has_many :tags, dependent: :destroy
end
