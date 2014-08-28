require "snowshoe_ruby/version"
require "snowshoe_ruby/client"
require "snowshoe_ruby/config"

module SnowshoeRuby
	client = Client.new(APP_KEY, APP_SECRET)

  @callback_url = CALLBACK_URL
  @data = {"data" => params["data"]}

  @consumer = OAuth::Consumer.new(
    client.app_key, 
    client.app_secret, 
    {:site => "http://beta.snowshoestamp.com/api",
    :scheme => :header
    })
  # Get Auth key with consumer
  @resp = @consumer.request(:post, '/v2/stamp', nil, {}, @data, { 'Content-Type' => 'application/x-www-form-urlencoded' })

  # Parse response and send to template
  @response = JSON.parse(@resp.body)
end
