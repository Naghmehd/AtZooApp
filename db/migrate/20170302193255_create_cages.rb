class CreateCages < ActiveRecord::Migration[5.0]
  def change
    create_table :cages do |t|
      t.string :name,              null: false,
      t.string :type,              null: false,
      t.timestamps
    end
  end
end
