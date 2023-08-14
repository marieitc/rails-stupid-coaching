class QuestionsController < ApplicationController
  def ask
  end

  STOP_MESSAGE = 'I am going to work right now!'
  def answer
    @question = params[:question]
    if @question == STOP_MESSAGE || @question == STOP_MESSAGE.upcase
      @response = 'Great'
    elsif @question.end_with?('?')
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
