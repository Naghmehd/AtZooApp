class CreateCages < ActiveRecord::Migration[5.0]
  def change
    create_table :cages do |t|
      t.string :name
      t.string :cage_type
      t.timestamps
    end
  end
end
