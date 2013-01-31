images = [
  "http://media.tumblr.com/tumblr_lpox91S6gB1qclt3z.gif"
  "http://media.tumblr.com/98a86d5360c3e1f0e62c1d905b6a0aa5/tumblr_inline_mh41pmCkHu1ruviqo.gif"
  "http://media.tumblr.com/tumblr_me71wa1kdo1qmqwn4.gif"
  "http://media.tumblr.com/fa058603737563999e81db16cb2766df/tumblr_inline_mh41qh2VMM1ruviqo.gif"
]

module.exports = (robot) ->
  robot.hear /(kzhu|sleep|snore)/i, (msg) ->
    msg.send msg.random images
