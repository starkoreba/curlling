class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :nickname, :birthday, presence: true
  validates :nickname, uniqueness: true
  validates :nickname, length: { minimum: 5 }
  validates :score, numericality: { only_integer: true }
end
