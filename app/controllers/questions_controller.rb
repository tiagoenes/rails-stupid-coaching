class QuestionsController < ApplicationController
  def ask
  end
  def show
    @asked = params[:asked]
    if @asked
      @anwser = coach_answer(@asked)
      puts @anwser
    end
  end
end

def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message == "I am going to work right now!"
    return ""
  elsif your_message.include?("?")
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  return "" if your_message == "I AM GOING TO WORK RIGHT NOW!"

  if your_message == your_message.upcase
    return "I can feel your motivation! #{coach_answer(your_message)}"
  else
    coach_answer(your_message)
  end
end
