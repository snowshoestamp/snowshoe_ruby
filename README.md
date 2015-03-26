Snowshoe API Ruby Client
============

The Snowshoe ruby client submits point data to the Snowshoe API for authentication. The client will return a JSON parsed hash, containing either  the serial of the matched stamp (a success!) or an error.

## Dependencies
- oauth

## Installation
```ruby
gem install snowshoe
```


## Usage: Setting up the client and making a POST

On instantiation of the Snowshoe client, pass in your SNOWSHOE_APP_KEY & SNOWSHOE_APP_SECRET, respectively.

Currently, all posts are made to v2 of the API at http://beta.snowshoestamp.com/api/v2/stamp.

The data hash is constructed from the point data sent by your front-end stamp screen.

The client will return a JSON parsed hash, containing either the serial of the matched stamp (a success!) or an error.

```ruby
client = Snowshoe::Client.new(SNOWSHOE_APP_KEY, SNOWSHOE_APP_SECRET)
data = { "data" => params["data"] }
response = client.post(data)

if response.include? "stamp"
  # Serve success asset...
else
  # Handle errors...
end
```

Below are examples of success and error JSON responses from the API.

```javascript
// Success
{
  "stamp": {
    "serial": "DEV-STAMP"
  },
  "receipt": "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
  "secure": false,
  "created": "2015-03-24 11:27:33.014149"
}

// Error
{
  "error": {
    "message": "Stamp not found",
    "code": 32
    },
    "receipt": "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
    "secure": false,
    "created": "2015-03-24 11:27:48.235046"
}
```

## Tests
(Coming soon)


## Contribute
Join us in improving this client by making a pull request.

## License
MIT (see LICENSE file)
