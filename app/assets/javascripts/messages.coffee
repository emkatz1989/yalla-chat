window.client = new Faye.Client('/faye') 
 
jQuery ->
  client.subscribe '/messages', (payload) ->
    $('#comments').find('.media-list').prepend(payload.message) if payload.message