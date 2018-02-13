class Photo < ApplicationRecord
  belongs_to :photable, polymorphic: true
end
