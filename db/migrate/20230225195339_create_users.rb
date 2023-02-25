class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_email , unique: true , index: true
       t.string :phone_number , unique: true , index: true
       t.timestamps
   end
  end
end
