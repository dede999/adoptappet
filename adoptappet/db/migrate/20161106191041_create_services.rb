class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name,          null:false
      t.string :address,       null:false
      t.string :phone,         null:false
      t.string :email,         null:false
      t.string :service_type,  null:false
      t.text   :about
      t.integer :owner_id,     null:false

      t.timestamps             null: false
    end
  end
end
