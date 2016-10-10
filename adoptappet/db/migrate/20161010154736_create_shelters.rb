class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :email,              null: false
      t.string :name,               null: false
      t.string :address,            null: false
      t.string :phone
      t.integer :pets_available,    null: false, default: 0
      t.text :about

      t.timestamps null: false
    end
  end
end
