class Cage < ApplicationRecord
  belongs_to :zoo

  def add_to_correct_cage(animal)
    if animal.is_carnivore?
      carnicage << animal
    elsif animal.is_herbivore?
      herbicage << animal
    elsif animal.is_unknownvore
      holdcage << animal
    else
      omnicage << animal
    end
  end

  def carnicage?
    'Carnicage' == self.type
  end

  def herbicage?
    'Herbicage' == self.type
  end

  def holdcage?
    'Holdcage' == self.type
  end

  def omnicage?
    'Omnivore' == self.type
  end
end
