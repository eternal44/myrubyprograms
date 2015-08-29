# add line numbers
def prompt(
  quest = '', question: quest, symbol: '>>', chomp: false, apply_methods: [],
  default_answer: nil
          )
  puts quest + '?'
  print "#{symbol}#{default_answer}"

  print '  '
  answer = gets
  apply_methods.each do | m |
    answer = answer.send(m) if answer.respond_to?(m)
  end
  answer
end

if __FILE__ == $PROGRAM_NAME
answers = []

questions = [
  ['What is your name', apply_methods: [:chomp]], ['What is your age', apply_methods: [:to_i]],
  ['What is your favorite color'],
  ['Would you like to order desert?', symbol: 'Y/n', default_answer: 'Y'],
]

questions.each do |q, *options|
  answers << prompt(q, *options)
end
puts answers
end

