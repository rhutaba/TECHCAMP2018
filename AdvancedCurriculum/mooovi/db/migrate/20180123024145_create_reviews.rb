class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :nickname, null: false
      t.integer :rate, null: false
      t.text :review, null: false
      t.integer :product_id, null: false

      t.timestamps null: false
    end
  end
end
