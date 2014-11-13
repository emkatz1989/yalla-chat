window.client = new Faye.Client('/faye') 
alert("loaded")
jQuery ->
  client.subscribe '/messages', (payload) ->
    $('#messages').find('.media-list').prepend(payload.message) if payload.message



