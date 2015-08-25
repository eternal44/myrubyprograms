def prompt(quest = '', question: quest, symbol: '>>')
  puts quest + '?'
  print symbol

  print '  '
  gets

end
answers = []

questions = ['What is your name', 'What is your age',
             'What is your favorite color'].each do |q|
  answers << prompt(q)
end
puts answers

