require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  describe 'create' do
    it 'Succesfully creates an animal' do
      animal = Animal.create(species: 'tiger', group: 'carnivore')
      assert_not_nil animal
      assert_equal 'tiger', animal.species
      assert_equal 'carnivore', animal.group
    end
  end

  describe 'cage' do
    let(:cage) { cages(:carnivore_cage) }

    it 'belongs to a cage' do
      animal = Animal.create(species: 'tiger', group: 'carnivore', cage: cage)
      assert_equal cage, animal.cage
    end
  end
end
