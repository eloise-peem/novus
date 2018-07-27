class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :contact_number, presence: true
  
  has_many :user_infos, dependent: :destroy
  has_many :posts, dependent: :destroy
  

  mount_uploader :picture, AvatarUploader
  
end
