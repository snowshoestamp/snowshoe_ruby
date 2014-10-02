require "snowshoe_ruby/version"

module SnowshoeRuby
	class << self

    def config
      @@config ||= YAML.load(open("#{Rails.root}/config/snowshoe.yml").read)[Rails.env]
    end

    def client
      @@client ||= OAuth::Consumer.new( config["key"], config["secret"], 
        {:site => "http://beta.snowshoestamp.com/api", :scheme => :header}
      )
    end

    def stamp_url
      "http://beta.snowshoestamp.com/applications/client/#{config["key"]}/"
    end

    def stamp(data)
      # Get Auth key with consumer
      @resp = client.request(:post, '/v2/stamp', nil, {}, data, { 'Content-Type' => 'application/x-www-form-urlencoded' })

      # Parse response and send to template
      @response = JSON.parse(@resp.body)
    end

  end
end
