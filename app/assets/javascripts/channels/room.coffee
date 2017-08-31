$(document).on 'ready', ->
  messages = $('#messages-list')
  App.messages = App.cable.subscriptions.create {
      channel: "RoomChannel"
      conversation_id: messages.data('conversation-id')
    },

    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      # console.log 'WESH ALORS?!', data
      unless data.content.blank?
        $('#messages-list > ul').append "<li>" +
          "<div class='row'>" + "<img class='avatar msg-avatar' src='#{data.avatar}/>"
          "<div class='#{if $('#messages-list').data('current-user-id') == data.user_id then 'message-sent' else 'message-received'}'>" +
          data.content + '</div></div></li>'
        scroll_bottom()

# $(document).on 'turbolinks:load', ->
#   $('#send_message').hide()
#   submit_message()
#   scroll_bottom()

# submit_message = () ->
#   $('#message_message').on 'keydown', (event) ->
#     if event.keyCode is 13
#       $('#send_message').click()
#       event.target.value = ""
#       event.preventDefault()


scroll_bottom = () ->
  $('#messages-list').scrollTop($('#messages-list')[0].scrollHeight)
