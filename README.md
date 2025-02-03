# ForexRateAPI

forexrateapi is the official Node.js wrapper for ForexRateAPI.com. This allows you to quickly integrate our foreign exchange rate API and currency conversion API into your application. Check https://forexrateapi.com documentation for more information.

## Installation
Add to Gemfile.

```
gem 'forexrateapi'
```

## Usage

```ruby

api_key = 'SET_YOUR_API_KEY_HERE'
client = ForexRateAPI::Client.new(api_key: api_key)
```
---
## Documentation

#### fetchSymbols()
```ruby
client.fetchSymbols()
```

[Link](https://forexrateapi.com/documentation#api_symbol)

---
#### fetchLive(base, currencies)

- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[Array]<[string]>> Optional. Pass in an array of currencies to return values for.

```ruby
client.fetchLive(base='USD', currencies=['AUD', 'CAD', 'GBP', 'JPY'])
```

[Link](https://forexrateapi.com/documentation#api_realtime)

---
#### fetchHistorical(date, base, currencies)

- `date` <[string]> Required. Pass in a string with format `YYYY-MM-DD`
- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[Array]<[string]>> Optional. Pass in an array of currencies to return values for.

```ruby
client.fetchHistorical(date='2021-04-05', base='USD', currencies=['AUD', 'CAD', 'GBP', 'JPY'])
```

[Link](https://forexrateapi.com/documentation#api_historical)

---
#### ohlc(base, currency, date, date_type)

- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currency` <[string]> Required. Specify currency you would like to get OHLC for.
- `date` <[string]> Required. Specify date to get OHLC for specific date using format `YYYY-MM-DD`.
- `date_type` <[string]> Optional. Pass in a date type, overrides date parameter if passed in.

```ruby
client.ohlc(base='USD', currency='EUR', date='2021-04-05', date_type=nil)
```

[Link](https://forexrateapi.com/documentation#api_ohlc)

---
#### convert(from_currency, to_currency, amount, date)

- `from_currency` <[string]> Optional. Pass in a base currency, defaults to USD.
- `to_currency` <[string]> Required. Specify currency you would like to convert to.
- `amount` <[number]> Required. The amount to convert.
- `date` <[string]> Optional. Specify date to use historical midpoint value for conversion with format `YYYY-MM-DD`. Otherwise, it will use live exchange rate date if value not passed in.

```ruby
client.convert(from_currency='USD', to_currency='EUR', amount=100, date='2021-04-05')
```

[Link](https://forexrateapi.com/documentation#api_convert)

---
#### timeframe(start_date, end_date, base, currencies)

- `start_date` <[string]> Required. Specify the start date of your timeframe using the format `YYYY-MM-DD`.
- `end_date` <[string]> Required. Specify the end date of your timeframe using the format `YYYY-MM-DD`.
- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[Array]<[string]>> Optional. Pass in an array of currencies to return values for.

```ruby
client.timeframe(start_date='2021-04-05', end_date='2021-04-06', base='USD', currencies=['AUD', 'CAD', 'GBP', 'JPY'])
```

[Link](https://forexrateapi.com/documentation#api_timeframe)

---
#### change(start_date, end_date, base, currencies)

- `start_date` <[string]> Required. Specify the start date of your timeframe using the format `YYYY-MM-DD`.
- `end_date` <[string]> Required. Specify the end date of your timeframe using the format `YYYY-MM-DD`.
- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[Array]<[string]>> Optional. Pass in an array of currencies to return values for.

```ruby
client.change(start_date='2021-04-05', end_date='2021-04-06', base='USD', currencies=['AUD', 'CAD', 'GBP', 'JPY'])
```

[Link](https://forexrateapi.com/documentation#api_change)

---
#### usage()

```ruby
client.usage()
```

[Link](https://forexrateapi.com/documentation#api_usage)

---
**[Official documentation](https://forexrateapi.com/documentation)**
---
## FAQ

- How do I get an API Key?

    Free API Keys are available [here](https://forexrateapi.com).

- I want more information

    Checkout our FAQs [here](https://forexrateapi.com/faq).


## Support

For support, get in touch using [this form](https://forexrateapi.com/contact).


[Array]: https://www.geeksforgeeks.org/ruby-data-types/ 'Array'
[number]: https://www.geeksforgeeks.org/ruby-data-types/ 'Number'
[string]: https://apidock.com/ruby/String 'String'