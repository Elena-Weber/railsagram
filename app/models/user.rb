class User < ApplicationRecord
  has_many :posts
  has_many :likes
  has_one_attached :profile_pic
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
