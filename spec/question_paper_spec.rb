require "../lib/QuestionPaper"
describe QuestionPaper do
  let(:question) {mock('Question')}
#  subject {QuestionPaper.new}

  it "should have an empty array of questions when QuestionPaper is created" do
    subject.questions.should be_an_instance_of(Array)
    subject.questions.size.should == 0
  end

  it "should add the question to the question paper" do
    #question = mock('Question')
    subject = QuestionPaper.new
    subject.add(question)
    subject.questions.should include(question)
  end


  it "should compute the total mark available" do
    first_question = mock('Question')
    first_question.stub!(:available_marks).and_return(10)
    subject.add(first_question)

    second_question = mock('Question')
    second_question.stub!(:available_marks).and_return(20)
    subject.add(second_question)

    subject.total_marks.should == 30
  end

  it "should call available_marks on the questions in the paper" do
    #question = mock('Question')
    question.stub!(:available_marks).and_return(10)
    subject.add(question)

    question.should_receive(:available_marks)
    subject.total_marks
  end





  context 'when computing total available marks' do

    before do
      question.stub!(:available_marks).and_return(10)
      subject.add(question)
    end

    it "should call available_marks on the questions in the paper" do
      #question = mock('Question')
      question.stub!(:available_marks).and_return(10)
      subject.add(question)

      question.should_receive(:available_marks)
      subject.total_marks
    end

    it "should compute the total mark available" do
      second_question = mock('Question')
      second_question.stub!(:available_marks).and_return(20)
      subject.add(second_question)

      subject.total_marks.should == 30
    end

  end



end