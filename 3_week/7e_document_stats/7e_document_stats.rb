Dir.chdir(File.dirname(__FILE__))
File.open('text.txt', 'r+') do |file|
  @line_count = 0
  @character_count = 0
  @letter_count = 0
  @word_count = 0
  @sentence_count = 0

  while line = file.gets
    @line_count += 1
    @character_count += line.length
    @letter_count += line.gsub(/\s+/, '').length
    @word_count += line.split(' ').count
    @sentence_count += line.split(/[.?!]/).count
  end
end

lines = File.readlines('text.txt')
text = lines.join

@paragraph_count = text.split(/\n\n/).count
@words_per_sentence = @word_count / @sentence_count
@sentences_per_paragraph = @sentence_count / @paragraph_count

@analyzer_hash =
   Hash[
    'line_count', @line_count,
    'character_count', @character_count,
    'letter_count', @letter_count,
    'word_count', @word_count,
    'sentence_count', @sentence_count,
    'paragraph_count', @paragraph_count,
    'words_per_sentence_average', @words_per_sentence,
    'sentences_per_paragraph_average', @sentences_per_paragraph
]

File.open('temp.txt', 'w') do |file|
  file.puts "analyzer_hash = #{@analyzer_hash}"
end

File.rename('temp.txt', 'analyzer.rb')
