# Timeクラスの学習
# Railsの created_at などで使われる「時間」の操作

# 1. 今の時間を作る
now = Time.now
puts "今の時間は: #{now}"


# 2. 見やすく整える（strftimeメソッド）
# %Y=年, %m=月, %d=日, %H=時, %M=分
# Railsの画面表示でよく使います
puts "見やすくすると: #{now.strftime("%Y年%m月%d日 %H時%M分")}"


# 3. 時間の計算
# プログラミングでは「秒」単位で足し算引き算をします
# 60秒 * 60分 * 24時間 = 86400秒（＝1日）

tomorrow = now + 86400
puts "明日のこの時間は: #{tomorrow}"