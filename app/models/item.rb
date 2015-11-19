class Item < ActiveRecord::Base
	belongs_to :user
	mount_uploader :avatar, AvatarUploader
	has_many :reviews
end
