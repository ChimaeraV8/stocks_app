class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :stocks
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable,
        :validatable,password_length: 8..128
end
