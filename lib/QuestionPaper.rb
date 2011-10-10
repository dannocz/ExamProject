class QuestionPaper

  def initialize
    @questions = []
  end

  def questions
    @questions # return []: empty array
  end

  def add(question)
    @questions.push question
  end

end