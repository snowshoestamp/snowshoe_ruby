require "snowshoe_ruby/version"
require "snowshoe_ruby/client"

module SnowshoeRuby
	#client = Client.new('5bc9c3ddf1f46265e03a', '70a99aa7f4de7f48f235215ce2708b6e4f19377c')

  @callback_url = "http://10.99.114.161/:3000/stamp_info"
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
