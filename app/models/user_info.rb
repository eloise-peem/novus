class UserInfo < ApplicationRecord

	belongs_to :user, :polymorphic => true, :required => false, dependent: :destroy
	has_many :posts, dependent: :destroy


end
