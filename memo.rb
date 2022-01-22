require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.chomp.to_s

if memo_type == "1"
 puts "拡張子を除いたファイルを入力してください。"
 file_name = gets.to_s
 puts "メモしたい内容を記入してください。"
 puts "完了したらCtrl + D を押します。"
 
 input = $stdin.read
 CSV.open("#{file_name}.csv",'w') do |test|
 test << [input]
 puts "以下の内容をメモに登録しました。「#{input}」"
 end
else 
 puts "編集するファイルを拡張子を除いて入力してください。"
 file_name = gets.to_s
 puts "メモしたい内容を記入してください。"
 puts "完了したらCtrl + D を押します。"
 
 input = $stdin.read
 CSV.open("#{file_name}.csv",'a') do |test|
 test << [input] 
 puts "以下の内容をメモに追記しました。「#{input}」"
 end
end
