class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :maps
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable,
        :validatable,password_length: 8..128
end
