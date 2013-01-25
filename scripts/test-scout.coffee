module.exports = (robot) ->

  robot.router.get "/hubot/scoutapp", (req, res) ->

    room = "#NPR_APPS"

    data = {"id": 999999,"time": "2012-03-05T15:36:51Z","server_name": "Blade","server_hostname": "blade","lifecycle": "start","title": "Last minute met or exceeded 3.00 , increasing to 3.50 at 01:06AM","plugin_name": "Load Average","metric_name": "last_minute","metric_value": 3.5,"severity": "warning","url": "https://scoutapp.com/a/999999","sparkline_url":"https://scoutapp.com/alert_sparkline.png"}

    data_string = "Scout #{data.severity} - #{data.server_name} on host #{data.server_hostname} #{data.lifecycle}ed - #{data.plugin_name} - #{data.title} - Current value #{data.metric_name}=#{data.metric_value} - Details: #{data.url}"

    robot.messageRoom room, data_string

    robot.messageRoom room, data.sparkline_url if data.sparkline_url

    res.write(data_string)
    res.end()
