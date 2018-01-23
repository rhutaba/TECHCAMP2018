require "csv"
User.create(id: 1, email: "karimen@karimen.com", password: 12345678, nickname: "仮メン太郎")

CSV.foreach('db/tweets.csv') do |row|
  Tweet.create(text: row[1], image: row[2], created_at: row[3], updated_at: row[4], user_id: row[5])
end
