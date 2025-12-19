# メソッド（関数）の学習
# 「引数（材料）」を受け取って、「戻り値（成果物）」を返す仕組み

# 実験1: 引数（ひきすう）を受け取るメソッド
# name という箱に、渡された文字が入る
def greet(name)
  puts "こんにちは、#{name}さん！"
end

puts "--- 実験1: 引数 ---"
greet("Yuyakun")   # "Yuyakun" が name に入る
greet("Tanaka")    # "Tanaka" が name に入る


# 実験2: 戻り値（もどりち）があるメソッド
# puts（表示）するのではなく、計算結果を「呼び出し元」に返す（return）
def calculate_area(width, height)
  return width * height
end

puts "--- 実験2: 戻り値 ---"
# 計算結果を受け取って、変数に入れる
area_result = calculate_area(10, 20)

puts "計算された面積は #{area_result} です"


# 実験3: よくある勘違い（戻り値がない場合）
def just_print(a, b)
  # puts は「画面に出す」だけで、値を返さない（nilになる）
  puts a + b
end

puts "--- 実験3: putsの結果を変数に入れると？ ---"
result = just_print(3, 5) 
# ここで「8」と表示はされるが...

puts "変の中身は... #{result.inspect}" 
# => nil （空っぽ）になる！これがバグの原因になりやすい

# 【学習メモ：関数（メソッド）とは？】
# 処理をひとまとめにした「部品」のこと。
# 1. 引数（材料）を受け取る
# 2. 処理を行う
# 3. 戻り値（成果物）を返す
# メリット：何度も同じ処理を書かなくて済む（再利用）、読みやすくなる。