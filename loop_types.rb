# 繰り返し処理の違い（each, times, while）
# 何を基準にループさせるかの実験

puts "--- 1. times の実験 ---"
# 「回数」を指定して繰り返す
# 0から始まることに注意（5.timesなら 0,1,2,3,4）
5.times do |i|
  puts "#{i + 1}回目の繰り返しです"
end


puts "\n--- 2. while の実験 ---"
# 「条件」が真（true）である間、繰り返す
# ※注意：終わる条件を作らないと「無限ループ」してPCが固まるので注意！

number = 0
# number が 10 より小さい間はずっと繰り返す
while number < 10
  puts "現在の数字: #{number}"
  number += 1 # ここで数字を増やさないと一生 0 のままで止まらなくなる
end
puts "10になったので while を抜けました"


puts "\n--- 3. each の実験（復習） ---"
# 「データ」の中身を順番に取り出す
# 実務ではこれが9割。データがある分だけ繰り返すので一番安全。
colors = ["赤", "青", "黄色"]

colors.each do |color|
  puts "色は #{color} です"
end