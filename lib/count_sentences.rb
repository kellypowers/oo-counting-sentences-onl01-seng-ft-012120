require 'pry'

class String

  def sentence?
    self.end_with?('.')

  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_array = []
    sentence_array = self.split
    sentence_array.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        new_array<< word
      end
    end
    #puts new_array
    new_array.count
  end
end