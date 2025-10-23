class CreateClubs < ActiveRecord::Migration[8.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.boolean :supplies_towels
      t.text :notes

      t.timestamps
    end
  end
end
