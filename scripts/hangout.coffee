
module.exports = (robot) ->
  randomstring = require("randomstring");
  random_string = 'nprapps' + randomstring.generate(33)

  robot.hear /(hangout|hang out|hang)/i, (msg) ->
    msg.send "I hear you want a hangout. Try this: https://plus.google.com/hangouts/_/#{ random_string }?authuser=0&hl=en"
