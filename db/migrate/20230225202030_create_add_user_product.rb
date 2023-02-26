class CreateAddUserProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews , :product, null: true, foreign_key: true
    add_reference :reviews , :user, null: true, foreign_key: true
  end
end
