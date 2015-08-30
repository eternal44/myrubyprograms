require 'minitest/autorun'
require_relative "../1c_prompt"

describe prompt do
  # This is difficult because of IO being used.
  it 'shows the message and prompt on one line' do
    -> {prompt('something ')}.must_output "something"
  end
end
