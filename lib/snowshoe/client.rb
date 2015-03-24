module Snowshoe
  class Client
    API_VERSION = "http://beta.snowshoestamp.com/api/v2"

    def initialize(key, secret, options={})
      # Flexiblity for future endpoint uri changes
      api_version = options[:api_version] || API_VERSION

      @consumer = OAuth::Consumer.new(
      key,
      secret,
      {:site => api_version,
        :scheme => :header
      }
      )
    end

    def post(body)
      response = consumer.request(:post,
      "/stamp",
      nil,
      {},
      body,
      {'Content-Type' => 'application/x-www-form-urlencoded'}
      )
      return JSON.parse(response.body)
    rescue => exception
      log_error(exception.message)
      []
    end

    def log_error(message)
      puts "ERROR: #{self.class}: #{message}"
    end

    private
    attr_reader :consumer
  end
end
