module.exports = (robot) ->
  robot.hear /(hangout|hang out|hang)/i, (msg) ->
    msg.send "I hear you want a hangout. Try this: https://plus.google.com/hangouts/_/zjxlzfbpwo1aotxb0hod9xz9sv8568xyz8k1w8sp?authuser=0&hl=en"
