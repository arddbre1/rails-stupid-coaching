class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:questions]
    @answer = good_coach(@user_input)
  end

  def good_coach(question)
    if question == 'I am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      'I don`t care, get dressed and go to work!'
    end
  end
end
