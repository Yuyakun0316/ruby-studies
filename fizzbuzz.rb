# FizzBuzz問題
# 1〜100までの数字を出力するが、3の倍数はFizz、5の倍数はBuzz、15の倍数はFizzBuzzとする

# 1から100まで繰り返す
(1..100).each do |number|
  
  # ここが最大のポイント！
  # 先に「15で割り切れるか（3かつ5）」をチェックしないといけない。
  # もし先に「3で割り切れる？」を聞いてしまうと、15の時に "Fizz" と答えて満足してしまうから。
  
  if number % 15 == 0
    puts "FizzBuzz"
    
  elsif number % 3 == 0
    puts "Fizz"
    
  elsif number % 5 == 0
    puts "Buzz"
    
  else
    # どの条件にも当てはまらない場合は、数字をそのまま出す
    puts number
  end
  
end