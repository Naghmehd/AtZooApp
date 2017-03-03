require 'test_helper'

class CageTest < ActiveSupport::TestCase
  describe 'create' do
    it 'Succesfully creates an animal' do
      cage = Cage.create(group: 'carnivore')
      assert_not_nil cage
      assert_equal 'carnivore', cage.group
    end
  end

  describe 'zoo' do
    let(:zoo) { zoos(:zoo) }

    it 'belongs to a zoo' do
      cage = Cage.create(group: 'carnivore', zoo: zoo)
      assert_equal zoo, cage.zoo
    end
  end
end
