pauseVideo = ->
  player.pauseVideo()
seekTo = (s) ->
  player.seekTo s
playVideo = ->
  player.playVideo()
currentTime = ->
  player.currentTime()


subtitle_getjson = (jsonfile, lang) ->
  json_result = $.getJSON(jsonfile, (data) ->
    $.each data, (i, item) ->
      eval "sub_start_" + lang + ".push(item.start)"
      eval "sub_text_" + lang + ".push(item.text)"
      eval "sub_end_" + lang + ".push(item.end)"
      eval "sub_index_" + lang + ".push(Math.floor(item.start / 1000))"
    eval "sub_json_" + lang + "=this.json_result"
  )
