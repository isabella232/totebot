import requests
import json

url = 'http://totenbot.herokuapp.com/hubot/scoutapp'
data = {}
data['payload'] = {"id": 999999,"time": "2012-03-05T15:36:51Z","server_name": "Blade","server_hostname": "blade","lifecycle": "start","title": "Last minute met or exceeded 3.00 , increasing to 3.50 at 01:06AM","plugin_name": "Load Average","metric_name": "last_minute","metric_value": 3.5,"severity": "warning","url": "https://scoutapp.com/a/999999","sparkline_url":"https://scoutapp.com/alert_sparkline.png"}

r = requests.post(url, data=json.dumps(data))

print r.content
