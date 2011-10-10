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

  def total_marks

    total_marks = 0
    @questions.each  do | question |
       total_marks += question.available_marks
    end

    return total_marks

  end

end