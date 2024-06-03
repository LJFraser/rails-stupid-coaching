class QuestionsController < ApplicationController
  def ask
    @test= 'test'
  end

  def answer
    input = params[:coach_question]
    if input == 'I am going to work'
      @response = 'Great!'
    elsif input.include?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = 'I don\'t care, get dressed and go to work!'
    end
  end
end
