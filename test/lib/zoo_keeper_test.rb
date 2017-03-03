require 'test_helper'

class ZooKeeperTest < ActiveSupport::TestCase
  describe 'adding an animal to' do
    let(:subject) { ZooKeeper.new }
    let(:tiger)   { animals(:tiger) }
    let(:cow)     { animals(:cow) }
    let(:swiggly) { animals(:swiggly) }
    let(:baboon)  { animals(:baboon) }

    describe 'carnivore cage' do
      let(:cage)    { cages(:carnivore_cage) }

      it 'accepts a carnivore animal' do
        assert subject.(cage, tiger)
        assert_equal tiger.cage_id, cage.id

        animals = cage.animals
        assert_includes animals, tiger
      end

      it 'rejects an herbivore animal' do
        assert_not subject.(cage, cow)
        assert_not_equal cow.cage_id, cage.id

        animals = cage.animals
        assert_not_includes animals, cow
      end

      it 'rejects an omnivore animal' do
        assert_not subject.(cage, baboon)
        assert_not_equal baboon.cage_id, cage.id

        animals = cage.animals
        assert_not_includes animals, baboon
      end

      it 'rejects an unknown animal' do
        assert_not subject.(cage, swiggly)
        assert_not_equal swiggly.cage_id, cage.id

        animals = cage.animals
        assert_not_includes animals, swiggly
      end
    end

    describe 'herbivore cage' do
      let(:cage)    { cages(:herbivore_cage) }

      it 'rejects a carnivore animal' do
        assert_not subject.(cage, tiger)
        assert_not_equal tiger.cage_id, cage.id

        animals = cage.animals
        assert_not_includes animals, tiger
      end

      it 'accepts an herbivore animal' do
        assert subject.(cage, cow)
        assert_equal cow.cage_id, cage.id

        animals = cage.animals
        assert_includes animals, cow
      end

      it 'rejects an omnivore animal' do
        assert_not subject.(cage, baboon)
        assert_not_equal baboon.cage_id, cage.id

        animals = cage.animals
        assert_not_includes animals, baboon
      end

      it 'rejects an unknown animal' do
        assert_not subject.(cage, swiggly)
        assert_not_equal swiggly.cage_id, cage.id

        animals = cage.animals
        assert_not_includes animals, swiggly
      end
    end

    describe 'omnivore cage' do
      let(:cage)    { cages(:omnivore_cage) }

      it 'rejects a carnivore animal' do
        assert_not subject.(cage, tiger)
        assert_not_equal tiger.cage_id, cage.id

        animals = cage.animals
        assert_not_includes animals, tiger
      end

      it 'rejects an herbivore animal' do
        assert_not subject.(cage, cow)
        assert_not_equal cow.cage_id, cage.id

        animals = cage.animals
        assert_not_includes animals, cow
      end

      it 'accepts an omnivore animal' do
        assert subject.(cage, baboon)
        assert_equal baboon.cage_id, cage.id

        animals = cage.animals
        assert_includes animals, baboon
      end

      it 'rejects an unknown animal' do
        assert_not subject.(cage, swiggly)
        assert_not_equal swiggly.cage_id, cage.id

        animals = cage.animals
        assert_not_includes animals, swiggly
      end
    end
  end
end
