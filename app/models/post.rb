class Post < ApplicationRecord
  has_many :photos, as: :photoable

  has_and_belongs_to_many :users

  has_many :reports
  has_many :users, through: :reports

  has_many :likes
  has_many :users, through: :likes

  has_many :comments
  has_many :users, through: :comments

  has_many :filters
end
