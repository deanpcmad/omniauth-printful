require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Printful < OmniAuth::Strategies::OAuth2

      option :client_options, {
        site: "https://www.printful.com",
        # authorize_url: "/oauth/token",
        # token_url: "/oauth/token"
      }

      # uid { raw_info["data"]["id"] }

      # info do
      #   # {
      #   #   "username" => raw_info["data"]["username"],
      #   #   "url" => raw_info["data"]["url"],
      #   #   "first_name" => raw_info["data"]["firstName"],
      #   #   "last_name" => raw_info["data"]["lastName"],
      #   #   "email" => raw_info["data"]["email"],
      #   #   "avatar" => raw_info["data"]["avatar"]["src"]
      #   # }
      # end

      def raw_info
        # @raw_info ||= access_token.get('/api/v3/user').parsed
        access_token
      end

    end
  end
end
