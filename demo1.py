from google.transit import gtfs_realtime_pb2
import urllib
import urllib.request

feed = gtfs_realtime_pb2.FeedMessage()
response = urllib.request.urlopen('https://gtfs.halifax.ca/realtime/TripUpdate/TripUpdates.pb')
feed.ParseFromString(response.read())
for entity in feed.entity:
  if entity.HasField('trip_update'):
    print( entity.trip_update )
