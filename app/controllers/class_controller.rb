class ClassController < ApplicationController
  def show
    @questions = Question.all.order('created_at desc').limit(10)
  end
end
