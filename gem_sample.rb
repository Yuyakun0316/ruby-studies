# Gemの学習
# 外部ライブラリ「faker」を使って、架空のデータを生成する

# インストールしたGemを読み込むための呪文
require 'bundler/setup'
require 'faker'

puts "--- 架空のユーザーデータ生成 ---"

# 10回繰り返して、偽名とメールアドレスを表示
10.times do
  # Faker::Name.name で適当な名前を出してくれる
  # Faker::Internet.email で適当なメアドを出してくれる
  puts "名前: #{Faker::Name.name} / Email: #{Faker::Internet.email}"
end

puts "------------------------------"
puts "日本語も出せます："
puts Faker::Name.name_with_middle # 日本語環境じゃないと英語のままかもですが実験！