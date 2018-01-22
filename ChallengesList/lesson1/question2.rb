# 問題2. うるう年判定
# うるう年: 4で割り切れる、かつ100で割り切れて400で割り切れない年

def get_days(year, month)
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  if month == 2
    if divisible(year, 4) && divisible(year, 100) && divisible(year, 400)
      return 29
    end
  end

  return month_days[month - 1]
end

def divisible(number, divider)
  number%divider == 0
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"
