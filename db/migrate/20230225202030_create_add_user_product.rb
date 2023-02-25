class CreateAddUserProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews , :products, null: true, foreign_key: true
    add_reference :reviews , :users, null: true, foreign_key: true
  end
end
