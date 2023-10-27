from google.transit import gtfs_realtime_pb2
import urllib
import urllib.request
import json
from google.transit import gtfs_realtime_pb2
from google.protobuf.json_format import MessageToDict
from google.protobuf.json_format import MessageToJson
import json
import pandas as pd
from collections import OrderedDict
import datetime

feed = gtfs_realtime_pb2.FeedMessage()
# https://gtfs.halifax.ca/realtime/Alert/Alerts.pb
response = urllib.request.urlopen('https://gtfs.halifax.ca/realtime/Alert/Alerts.pb')
feed.ParseFromString(response.read())
json_obj = MessageToJson(feed)
print(json_obj)
