class CreateCages < ActiveRecord::Migration[5.0]
  def change
    create_table :cages do |t|
      t.string :group
      t.timestamps
    end
  end
end
