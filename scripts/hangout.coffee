function randomString(length) {
    chars = '0123456789abcdefghijklmnopqrstuvwxyz'
    var result = '';
    for (var i = length; i > 0; --i) result += chars[Math.round(Math.random() * (chars.length - 1))];
    return result;
}

hangout_url = 'https://plus.google.com/hangouts/_/#{ randomString(40) }?authuser=0&hl=en'

module.exports = (robot) ->
  robot.hear /(hangout|hang out|hang)/i, (msg) ->
    msg.send "I hear you want a hangout. Try this: #{ hangout_url }"
