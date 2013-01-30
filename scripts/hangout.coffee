module.exports = (robot) ->
  robot.hear /(hangout|hang out)/i, (msg) ->
    robot.http("https://hangoutsapi.talkgadget.google.com/hangouts/_?gid=798192938663").get() (err, r, body) ->
      msg.send "I hear you want a hangout."
      msg.send r
