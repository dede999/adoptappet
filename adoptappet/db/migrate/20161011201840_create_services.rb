class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :type

      t.timestamps null: false
    end
  end
end
