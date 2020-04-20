# • Communicationというクラスを作ってみよう。
# • greetというメソッドを定義してみよう。
# • クラスを継承して新しいサブクラスを作ってみよう。 WorkplaceCommunication(職場)とか。
# • greetというメソッド内でHelloという言葉を受けたら、Helloと返す処理を実装してみよう。
# • 職場かどうかを判断するメソッドを作って、職場じゃなければ挨拶しないようにしてみよう（酷い）

#Communicationというクラスを作る
class Communication
  def greet
    print "挨拶してください[Hello]:"
    greeting = gets
    if greeting =~ /Hello/
      puts "同僚：Hello!"
    else
      puts "同僚：" + greeting
    end
  end
  def office
    puts "誰かが向こうから歩いて来ました"
    print "ここはあなたの職場ですか? [y|n]:"
    @response = gets
  end
end
#Communicationクラスを継承して新しいサブクラスを作る
class WorkplaceCommunication < Communication
end

#↓↓ここから処理↓↓
communication1 = WorkplaceCommunication.new
response2 =communication1.office

if response2 =~ /^[yY]/
  communication2 = Communication.new
  communication2.greet
else
  puts "あなた：・・・・。"
end










