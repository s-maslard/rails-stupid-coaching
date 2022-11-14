class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]

    if @question == 'Im going to work'
      @response = 'Great!'

    elsif @question.end_with?('?')
      @response = 'Silly question, get dressed and get to work!'

    else
      @response = 'I dont care, get dressed and go to work!'
      
    end
  end
end
