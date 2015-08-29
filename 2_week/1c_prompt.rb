# add line numbers
def prompt(quest = '', question: quest, symbol: '>>')
  puts quest + '?'
  print symbol

  print '  '
  gets

end

if __FILE__ == $PROGRAM_NAME
answers = []

questions = ['What is your name', 'What is your age',
             'What is your favorite color']

questions.each do |q|
  answers << prompt(q, symbol: '--')
end
puts answers
end

