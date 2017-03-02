class Animal < ApplicationRecord

  def carnivore?
    'Carnivore' == self.type
  end

  def herbivore?
    'Herbivore' == self.type
  end
end
