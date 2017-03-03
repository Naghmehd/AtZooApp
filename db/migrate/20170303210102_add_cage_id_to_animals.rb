class AddCageIdToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_reference :animals, :cage, foreign_key: true
  end
end
