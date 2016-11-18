# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ClassChannel < ApplicationCable::Channel
  def subscribed
    stream_from "class_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Question.create! content: data['question']
  end
end
