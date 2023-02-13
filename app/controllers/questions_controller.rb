class QuestionsController < ApplicationController

  def ask
    # hi
  end

  def answer
    @question = params[:question]
    @response = coach_response
  end

  def coach_response
    question = params[:question]
    if question == 'I am going to work'
      'Great!'
    elsif question[-1] == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
