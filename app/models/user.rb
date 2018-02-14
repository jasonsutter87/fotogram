class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :photos

  has_and_belongs_to_many :posts

  has_many :reports
  has_many :posts, through: :reports

  has_many :likes
  has_many :posts, through: :likes

  has_many :comments
  has_many :posts, through: :comments
end
