class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # as organisator
  has_many :activities
  has_many :participations
  # as a participant and an organisator
  has_many :private_messages

  validates :first_name, :last_name, :nickname, :birthday, presence: true
  validates :nickname, uniqueness: true
  validates :nickname, length: { minimum: 5 }
  validates :score, numericality: { only_integer: true }
end
