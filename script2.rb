#10回連続で"helloworld"出力して、11回目から"hello"だけ出力

for i in 1..20
  if i < 10 then
    puts "hello,World"
  else
    puts "hello"
  end
end