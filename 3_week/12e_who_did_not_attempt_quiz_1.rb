# doctest: Show correct # of test takers
# >> quiz = [0,0,0,1,0,0,1,1,0,1]
# >> count_quiz_completions(quiz)
# => "The number of participants who did not attempt Quiz 1 is 6 out of 10 total participants."

def count_quiz_completions(quiz_results)
  no_quiz = quiz_results.count(0)
  total = quiz_results.count
  "The number of participants who did not attempt Quiz 1"\
  " is #{no_quiz} out of #{total} total participants."
end
