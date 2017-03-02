class CreateZoos < ActiveRecord::Migration[5.0]
  def change
    create_table :zoos do |t|

      t.timestamps
    end
  end
end
