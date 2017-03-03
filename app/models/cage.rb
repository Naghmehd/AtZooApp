class Cage < ApplicationRecord
  belongs_to :zoo, optional: true
  has_many   :animals
end
