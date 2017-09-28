class Actor < ApplicationRecord
  validates :name_actor, presence: true
  mount_uploader :avatar, AvatarUploader
end
