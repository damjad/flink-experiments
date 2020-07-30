import csv
import requests
import sys

"""
A simple program to print the result of a Prometheus query as CSV.
"""

if len(sys.argv) <= 3:
    print('Usage: {0} http://prometheus:9090 a_query start end'.format(sys.argv[0]))
    sys.exit(1)

response = requests.get('{0}/api/v1/query_range'.format(sys.argv[1]),
        params={'query': sys.argv[2], 'start': sys.argv[3], 'end': sys.argv[4], 'step': '5s'})
results = response.json()['data']['result']

# Build a list of all labelnames used.
labelnames = set()
for result in results:
      labelnames.update(result['metric'].keys())

# Canonicalize
labelnames.discard('__name__')
labelnames = sorted(labelnames)

writer = csv.writer(sys.stdout)
# Write the header,
writer.writerow(['name', 'timestamp', 'value'])

for result in results:
    name = result['metric']['subtask_index']
    for value in result['values']:
        writer.writerow([name, value[0], value[1]])
