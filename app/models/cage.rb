class Cage < ApplicationRecord
  belongs_to :zoo
  has_many   :animals

  
end
