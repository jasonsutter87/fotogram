class Connection < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :connetion, class_name: 'User', required: false
end
