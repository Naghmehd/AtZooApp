class AddZooIdToCages < ActiveRecord::Migration[5.0]
  def change
    add_reference :cages, :zoo, foreign_key: true
  end
end
