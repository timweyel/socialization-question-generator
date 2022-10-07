class Question < ApplicationRecord
  def self.load(array)
    array.each { |q| Question.create(question_string: q) }
  end
end
