class Animal < ApplicationRecord

  def carnivore?
    'Carnivore' == self.type
  end

  def herbivore?
    'Herbivore' == self.type
  end

  def unknownvore?
    'Unknownvore' == self.type
  end

  def omnivore?
    'Omnivore' == self.type
  end

  def is_carnivore?
    carnivore == true && herbivore == false
  end

  def is_herbivore?
    herbivore == true && carnivore == false
  end

  def is_unknownvore?
    herbivore == false && carnivore == false
  end

  def is_omnivore?
    herbivore == true && carnivore == true
  end
end
