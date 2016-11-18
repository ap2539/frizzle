App.class = App.cable.subscriptions.create "ClassChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#questions').prepend data['question']

    if $('.question').length > 10
      $('.question').last().remove()
      null

  speak: (question)->
    @perform 'speak', question: question

$(document).on 'keypress', '[data-behavior~=class_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    event.preventDefault()
    App.class.speak event.target.value
    event.target.value = ''
    null

