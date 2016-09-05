class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :login
      t.string :encrypted_password
      t.string :salt
      t.string :email
      t.string :name
      t.string :address
      t.text :description

      t.timestamps null: false
    end
  end
end
