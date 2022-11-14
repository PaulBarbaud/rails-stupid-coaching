  class QuestionsController < ApplicationController
    def ask
    end

    def answer
      @questions = params[:ask]
      if @questions == 'i am going to work'
        @answer = 'great'
      elsif @questions.end_with?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
