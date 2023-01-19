require_relative '../lib/forexrateapi'

API_KEY = 'REPLACE_ME'

ForexRateAPI::VERSION

client = ForexRateAPI::Client.new(
  api_key: API_KEY
)

data = client.fetchSymbols()
puts data

data = client.fetchLive()
puts data

data = client.fetchHistorical('2021-04-05', 'USD', ['AUD', 'CAD', 'GBP', 'JPY'])
puts data

data = client.convert('USD', 'EUR', 100, '2021-04-05')
puts data

data = client.timeframe('2021-04-05', '2021-04-06', 'USD', ['AUD', 'CAD', 'GBP', 'JPY'])
puts data

data = client.change('2021-04-05', '2021-04-06', 'USD', ['AUD', 'CAD', 'GBP', 'JPY'])
puts data