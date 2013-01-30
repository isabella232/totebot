module.exports = (robot) ->
  robot.hear /(promise|pledge|support|gift|bequest|bequeath|donate|membership|member|coffee)/i, (msg) ->
    msg.send "Coffee is for pledgers!"
    msg.send "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-928360.mp3"
