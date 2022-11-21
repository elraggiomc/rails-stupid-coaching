QUESTION_WORK = 'I am going to work'
ANSWER_WORK = 'Great!'
ANSWER_QUESTION = 'Silly question, get dressed and go to work!'
ANSWER_ELSE = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:state]
    @answer = stupid_coach(@question)
  end

  private

  def espregunta(pregunta)
    (pregunta === nil)? false : pregunta.end_with?("?")
  end

  def stupid_coach(pregunta)
    espregunta(pregunta) ? ANSWER_QUESTION : ((pregunta === QUESTION_WORK) ? ANSWER_WORK : ANSWER_ELSE)
  end
end
