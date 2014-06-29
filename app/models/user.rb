class User < ActiveRecord::Base
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :device_tokens

  has_many :friendships
  has_many :friends, through: :friendships

  has_many :group_registrations
  has_many :groups, through: :group_registrations
end
