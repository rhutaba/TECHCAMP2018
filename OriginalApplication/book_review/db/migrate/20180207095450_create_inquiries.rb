class CreateInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :inquiries do |t|
      t.string :email, null: false
      t.string :user_name, null: false
      t.string :target_url, null: false
      t.text :inquiry_text, null: false
      t.timestamps
    end
  end
end
