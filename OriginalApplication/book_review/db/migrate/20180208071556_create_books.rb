class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      # 制約やキー、ユニーク設定はあとまわし
      t.string :title,            null: false, comment: "書籍のタイトル"
      t.string :isbn_code_without_hyphen, null: false, comment: "ハイフンとISBNを除いた13桁のコード、書式: ISBNnnn-●-AAAA-BBBB-C"
      t.string :prefix_code,      null: false, comment: "接頭記号: n、ISBNコードの1-3桁目"
      t.string :group_code,       null: false, comment: "グループ記号: ●、ISBNコードの4桁目"
      t.string :publisher_code,   null: false, comment: "出版者記号: A、ISBNコードの5-8桁目"
      t.string :book_code,        null: false, comment: "書籍コード: B、ISBNコードの9-12桁目"
      t.string :check_digit,      null: false, comment: "チェックディジット: C、ISBNコードの13桁目"
      t.timestamps
    end
  end
end
