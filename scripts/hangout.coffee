hangout_url = 'https://plus.google.com/hangouts/_/229c9738912a72dc7a2b53a1d38f41f44b135310?authuser=0&hl=en'

module.exports = (robot) ->
  robot.hear /(hangout|hang out|hang)/i, (msg) ->
    msg.send "I hear you want a hangout. Try this: #{ hangout_url }"
