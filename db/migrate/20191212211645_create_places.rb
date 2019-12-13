class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :city
      t.string :hours
      t.boolean :wifi

      t.timestamps
    end
  end
end
