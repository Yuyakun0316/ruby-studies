# ハッシュ（Hash）の学習
# データに「ラベル（キー）」をつけて管理する箱

# 1. ハッシュの作り方
# キー（ラベル）: 値（中身） のセットで作る
# Railsではこの「シンボル（:nameなど）」を使う書き方が一般的
student = { name: "Tanaka", age: 25, score: 80 }

puts "--- 実験1: データを取り出す ---"
# 配列は [0] だったが、ハッシュは [:キー名] で取り出す
puts "名前: #{student[:name]}"
puts "年齢: #{student[:age]}"

# 存在しないキーを指定すると nil（空っぽ）になる
puts "身長: #{student[:height]}"


puts "\n--- 実験2: データの追加と変更 ---"
# 新しいキーを指定して代入すれば追加される
student[:height] = 175
# 既存のキーを指定すれば上書きされる
student[:score] = 90

puts "更新後のデータ: #{student}"


puts "\n--- 実験3: 【重要】配列の中にハッシュ（実務セット） ---"
# データベースから複数のユーザー情報を取ってくると、この形になることが多い
users = [
  { name: "Suzuki", role: "admin" },  # 0番目のユーザー
  { name: "Sato", role: "member" },   # 1番目のユーザー
  { name: "Takahashi", role: "guest" } # 2番目のユーザー
]

# 配列なので each で回せる！
users.each do |user|
  puts "#{user[:name]} さんの権限は #{user[:role]} です"
end

# 【学習ポイント】
# シンボル（:xxx）: 文字列（"name"）と似ていますが、Rubyでは「名前」を表す専用の軽量なラベルとして、先頭にコロンをつける書き方を多用します。
# 実験3の形: users という配列の中に、user というハッシュが複数入っている構造。これがRailsのデータベースからデータを取り出した時の基本形です。