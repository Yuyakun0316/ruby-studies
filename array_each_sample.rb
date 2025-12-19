# 配列（Array）と繰り返し（each）の学習
# 複数のデータをひとまとめにして、順番に処理する

puts "--- 実験1: 配列の基本 ---"
# [] を使って複数のデータを入れる（カンマ区切り）
fruits = ["リンゴ", "バナナ", "イチゴ"]

# 0番目から数えるのがルールの重要ポイント
puts "0番目のデータ: #{fruits[0]}" 
puts "1番目のデータ: #{fruits[1]}" 

puts "--- 実験2: eachを使って一気に表示 ---"
# 配列の中身を1つずつ取り出して、|fruit| という変数に入れて処理する
# （Railsの index.html.erb で @tweets.each do |tweet| ... と書くのと同じ！）
fruits.each do |fruit|
  puts "好きな果物は #{fruit} です"
end

puts "--- 実験3: 実践編（合計金額の計算） ---"
prices = [100, 200, 350]
total_price = 0 # 合計を入れる変数を先に作っておく

prices.each do |price|
  # total_price に price を足し合わせる
  total_price += price
  puts "現在の商品: #{price}円（小計: #{total_price}円）"
end

puts "最終的な合計金額は #{total_price} 円です"

# 【学習ポイント】
# 「インデックス（添字）」: データは「0番目」から始まること（fruits[0]）。
# 「パイプ |変数|」: each do |xxx| の |xxx| は、取り出した1個分のデータを入れるための「仮の変数名」です。ここを自由に決められることを理解してください。