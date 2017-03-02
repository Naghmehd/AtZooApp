class Cage < ApplicationRecord
  belongs_to :zoo

  def carnicage?
    'Carnicage' == self.type
  end

  def herbicage?
    'Herbicage' == self.type
  end
end
