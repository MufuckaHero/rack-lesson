require "slim"

module Lesson1
  class EndpointContacts
    def call(env)
      [200, {'Content-Type' => 'text/plain'}, [env.inspect]]
    end
  end

  class EndpointWelcome
    def call(env)
      _request = Rack::Request.new(env)
      _body = Slim::Template.new('index.slim', {}).render(_request)

      [200, {'Content-Type' => 'text/html'}, [_body]]
    end
  end
end