# コンソールに「HelloWorld」を表示してみよう。ただし、変数 greetingを定義して、そこに値を代入してから表示する事。
greeting = "Hello World"
puts greeting

# コンソールに1～10まで足した結果を表示してみよう。ただし、 for文を使う事。
num1 = 0
for i in 1..10
  num1 = num1 + i
end
puts num1

#コンソールに「引数が0なら偽。引数が1なら真」と表示してみよう。 if文で表現できる。出来ればメソッドも用意して。
def argument_num(num2)
  if num2 == true
    puts "true"
  elsif num2 == false
    puts "false"
  else
    puts "boolean型ではありません"
  end
end

argument_num(true)
argument_num(false)

# 配列を扱ってみよう。任意の配列に値を詰め込んで、その内容を コンソールに表示してみよう。配列に入れる型を色々変えて遊んでみよう。
raisetech_teachers = ["エナミコウジ","ウシジマユウタ","戸部拓人","YAT"]
expertise =  ["Java・AWSエンジニア","Rails&DevOpsエンジニア","サーバーサイド・フロントエンジニア ","Webデザイナー / Webエンジニア"]

for i in 0..3
  puts raisetech_teachers[i] + "さんは" + expertise[i] + "です"
end















