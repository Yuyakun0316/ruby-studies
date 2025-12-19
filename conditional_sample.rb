# 条件分岐（if文）の学習
# データの内容によって、動きを変える仕組み

# 点数を受け取って、評価を返すメソッド
def evaluate_score(score)
  # score が 80点より大きい場合
  if score > 80
    return "素晴らしい！大変よくできました"
  
  # score が 60点以上の場合（かつ80点以下）
  elsif score >= 60
    return "合格です！"
  
  # それ以外の場合
  else
    return "残念...不合格です（追試を受けてください）"
  end
end


puts "--- テスト結果発表 ---"

# 変数 score に値を入れる
student_score = 55
puts "あなたの点数は #{student_score} 点です。"

# メソッドを呼び出して、結果を受け取る
result = evaluate_score(student_score)
puts "判定結果: #{result}"


# 実験：わざと点数を変えてみる
puts "--- 再テスト ---"
student_score = 90
puts "再テストの点数は #{student_score} 点です。"
puts "判定結果: #{evaluate_score(student_score)}"