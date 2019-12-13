class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :residence
      t.integer :age
      t.string :occupation
      t.string :profile_pic

      t.timestamps
    end
  end
end
