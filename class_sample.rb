# クラスの学習
# 「設計図」を作って、そこから「実体」を生み出す

# 1. 設計図（クラス）を作る
# クラス名は必ず「大文字」から始めるのがルール
class Hero
  # 初期化メソッド（newした時に自動で動く特別なメソッド）
  # initialize（イニシャライズ）という名前は決まり文句
  def initialize(name, hp)
    @name = name  # @がつくと「インスタンス変数」になり、この実体の中でずっと覚えている
    @hp = hp
    puts "#{name} という勇者が誕生した！(HP: #{hp})"
  end

  # 勇者の行動メソッド
  def attack
    puts "#{@name} の攻撃！"
    puts "敵に 10 のダメージを与えた！"
  end

  # ステータスを見るメソッド
  def show_status
    puts "名前: #{@name} / HP: #{@hp}"
  end
end


puts "--- 実験: 設計図から実体を作る ---"

# 2. インスタンス（実体）を作る
# クラス名.new で「initialize」が動く
hero1 = Hero.new("テリー", 100)
hero2 = Hero.new("ドラン", 200)

puts "\n--- 実験: それぞれ動かしてみる ---"

# hero1（テリー）を操作
hero1.attack
hero1.show_status

puts "----------------"

# hero2（ドラン）を操作
# 同じ「攻撃」メソッドでも、@name が違うので違う名前が出る
hero2.attack
hero2.show_status