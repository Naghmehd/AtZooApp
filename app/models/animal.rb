class Animal < ApplicationRecord
  belongs_to :cage
  belongs_to :zoo, through: :cage

  
end
