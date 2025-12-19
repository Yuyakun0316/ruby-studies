# 【総仕上げ】ショッピングアプリ
# 基礎5大要素（変数、定数、配列、ハッシュ、メソッド、条件分岐）を全て使用

# 1. 商品データ（配列 × ハッシュ）
# 商品名と金額を持ったハッシュを、配列でまとめる
products = [
  { name: "ノートPC", price: 100000 },
  { name: "マウス", price: 3000 },
  { name: "キーボード", price: 5000 }
]

# 2. 合計金額を計算するメソッド（メソッド）
# 選んだ商品と個数を受け取って計算する
def calculate_total(price, quantity)
  total = price * quantity
  
  # 5個以上かったら10%引きにする（条件分岐）
  if quantity >= 5
    puts "★ 5個以上なので10%割引します！"
    total = total * 0.9
  end
  
  return total.to_i # 整数（Integer）にして返す
end


puts "--- ショッピングアプリへようこそ！ ---"

# 3. 商品一覧を表示する（繰り返し）
puts "【商品一覧】"
# each_with_index を使うと、中身(product)と番号(i)を同時に取れる
products.each_with_index do |product, i|
  puts "#{i}: #{product[:name]}（#{product[:price]}円）"
end


puts "\n購入したい商品の「番号」を入力してください："
# gets.to_i でユーザーが入力した文字を「数字」として受け取る（変数）
input_number = gets.to_i

# 4. 入力された番号が正しいかチェック（条件分岐）
# 商品の個数(size)より大きい数字や、マイナスの数字が来たらエラー
if input_number >= products.size || input_number < 0
  puts "エラー：その番号の商品は存在しません！"
  exit # プログラムをここで強制終了する
end

# 選ばれた商品を変数に入れる
selected_product = products[input_number]


puts "「#{selected_product[:name]}」ですね。何個買いますか？"
input_quantity = gets.to_i

# 5. メソッドを使って計算
total_price = calculate_total(selected_product[:price], input_quantity)

puts "--------------------------------"
puts "合計金額は #{total_price} 円です。"
puts "お買い上げありがとうございました！"