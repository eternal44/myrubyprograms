File.open('./A.txt', 'r+') do |f1|
  stage_file_update = ''

  while line = f1.gets
    stage_file_update << (line)
  end
  File.open('./temp.txt', 'w') { |f1| f1.puts stage_file_update }
  File.rename('./B.txt', './A.txt')
  File.rename('./temp.txt', './B.txt')
end

