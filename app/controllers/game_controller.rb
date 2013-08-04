class GameController < ApplicationController
  def index
    @questions = Question.all
    @choices = Choice.all
  end

  def new
  end

  def create
  end

  def show
    @questions = []

    Question.all.shuffle.first(10).each do |question|

      hash = Hash.new
      hash['content'] = question.content
      hash['question_type'] = question.question_type

      choices = []
      question.choices.shuffle.each do |choice|
        choices.push(choice.content)

        if (choice.id == question.correct_choice_id)
          hash['correct_choice'] = choices.length - 1
        end

      end
      hash['choices'] = choices

      @questions.push(hash)
    end

    respond_to do |format|
      format.json
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
