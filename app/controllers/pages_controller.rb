class PagesController < ApplicationController
  
  def home
  end
  
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ""
    if @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question.downcase == "i am going to work right now!"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
