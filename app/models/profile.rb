class Profile < ActiveRecord::Base
  belongs_to :industry
  belongs_to :city
  has_many :tags, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
  searchkick
  default_scope { order('updated_at DESC') }
end
