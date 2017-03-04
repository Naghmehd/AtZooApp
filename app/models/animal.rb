class Animal < ApplicationRecord
  belongs_to :cage

  scope :free, -> {
    where(cage_id: nil)
  }
end
