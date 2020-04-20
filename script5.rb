# • Communicationクラスに新しく話しかけてきた人が誰か(同僚とか上司とか)で応答を返すか、例外を返すような処理を作ってみよう。
# • 例外の条件や例外じゃなかった場合にどういった応答を返すかは 好きなように作ってOK。メソッドの使い方、
#   if文や例外処理の使い方に慣れてみよう。
# • 例外クラスは自作も可能。何か面白い例外を継承して、勝手に自作してもいいし、
#   既存の例外クラスを使ってもいい。とにかく例外をraiseしてみよう。

#1-3の挨拶を出力するクラス
class Communication
  def greet1
    puts "あなた：おはようございます！！"
  end
  def greet2
    puts "あなた：うぃっす～"
  end
  def greet3
    puts "あなた：おはよー"
  end
  def greet4
    puts "あなた：何だキミは！"
    puts "???：何だチミはってか？えぇ？　そうです、私が変なおじさんです！"
    puts "???：変なお～じさんだから、変なお～じさん・・・"
    puts "???：だっふんだ！"
  end
end
#自作の例外クラス
class NumberError < StandardError
end
#↓↓ここから処理↓↓
puts "あなたが出社した時、会った人は誰ですか？"
puts "1.上司"
puts "2.同期"
puts "3.後輩"
puts "4.???"
print "数字を入力してください："
num = gets
#データ型がintegerでない場合、integerへ変更
if num.is_a?(Integer)
else
  num = num.to_i
end

communication1 = Communication.new
if num == 1
  communication1.greet1
elsif num == 2
  communication1.greet2
elsif num == 3
  communication1.greet3
elsif num == 4
  communication1.greet4
else
  begin
    raise NumberError
  rescue
    puts "1～4の数字を入力してください"
  end
end