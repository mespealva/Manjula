class CreateFeedings < ActiveRecord::Migration[5.2]
  def change
    create_table :feedings do |t|
      t.integer :cant
      t.integer :time
      t.references :baby

      t.timestamps
    end
  end
end
