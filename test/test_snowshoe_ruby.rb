require 'test/unit'
require 'snowshoe_ruby/client'

class SnowshoeRubyTest < Test::Unit::TestCase
	def test_app_key
		client = Client.new('5bc9c3ddf1f46265e03a', '70a99aa7f4de7f48f235215ce2708b6e4f19377c')
		assert_equal "5bc9c3ddf1f46265e03a", client.app_key
	end

	def test_app_secret
		client = Client.new('5bc9c3ddf1f46265e03a', '70a99aa7f4de7f48f235215ce2708b6e4f19377c')
		assert_equal "70a99aa7f4de7f48f235215ce2708b6e4f19377c", client.app_secret
	end
end