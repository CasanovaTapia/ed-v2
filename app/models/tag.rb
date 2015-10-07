class Tag < ActiveRecord::Base
  belongs_to :profile
  belongs_to :user

  default_scope { order('created_at DESC') }
end
