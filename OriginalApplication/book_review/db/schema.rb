# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180208071900) do

  create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title", null: false, comment: "書籍のタイトル"
    t.string "isbn_code_without_hyphen", null: false, comment: "ハイフンとISBNを除いた13桁のコード、書式: ISBNnnn-●-AAAA-BBBB-C"
    t.string "prefix_code", null: false, comment: "接頭記号: n、ISBNコードの1-3桁目"
    t.string "group_code", null: false, comment: "グループ記号: ●、ISBNコードの4桁目"
    t.string "publisher_code", null: false, comment: "出版者記号: A、ISBNコードの5-8桁目"
    t.string "book_code", null: false, comment: "書籍コード: B、ISBNコードの9-12桁目"
    t.string "check_digit", null: false, comment: "チェックディジット: C、ISBNコードの13桁目"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", null: false
    t.string "user_name", null: false
    t.string "target_url", null: false
    t.text "inquiry_text", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "book_id", null: false, comment: "書籍のタイトル"
    t.integer "book_evaluation", null: false, comment: "書籍の評価 1〜10"
    t.text "review_text", null: false, comment: "書籍のレビュー"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
