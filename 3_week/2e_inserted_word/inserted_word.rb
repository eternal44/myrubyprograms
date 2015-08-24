File.open('text.txt', 'r+') do |f1|
  stage_file_update = ""
  
  while line = f1.gets
    stage_file_update << (line.gsub 'word', 'inserted word')
  end
  File.open('temp.txt', 'w') {|f1| f1.puts stage_file_update}
  File.rename('temp.txt', 'text.txt')
end

