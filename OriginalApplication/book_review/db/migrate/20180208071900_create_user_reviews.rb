class CreateUserReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :user_reviews do |t|
      t.integer :book_id,         null: false, comment: "書籍のタイトル"
      t.integer :book_evaluation, null: false, comment: "書籍の評価 1〜10"
      t.text   :review_text,      null: false, comment: "書籍のレビュー"
      t.timestamps
    end
  end
end
