class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :connetion, class_name: 'User'
end
