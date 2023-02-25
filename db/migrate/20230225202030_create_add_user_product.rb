class CreateAddUserProduct < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :reviews, :products, column: :product_id
    add_reference :reviews , :users, null: true, foreign_key: true
  end
end
