# 継承の学習
# 「親クラス」の機能を引き継いで、「子クラス」を作る

# 1. 親クラス（普通の車）
class Car
  def run
    puts "車が走ります。ブーン！"
  end

  def stop
    puts "車が止まります。キキーッ！"
  end
end


# 2. 子クラス（パトカー）
# 「< Car」と書くことで、Carクラスの機能を全部引き継ぐ（コピーする）
class PoliceCar < Car
  # パトカー独自の機能を追加
  def patrol
    puts "パトロール開始！サイレンを鳴らします。ウーウー！"
  end
end


puts "--- 実験1: 普通の車 ---"
car = Car.new
car.run
# car.patrol # 普通の車はパトロールできない（エラーになる）


puts "\n--- 実験2: パトカー（継承したクラス） ---"
police = PoliceCar.new

# 【重要】Carクラスにしか書いていない run が使える！
police.run  
# もちろん独自の機能も使える
police.patrol