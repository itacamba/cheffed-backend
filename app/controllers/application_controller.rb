class ApplicationController < ActionController::API

    def secret_key
        "h3llo"
    end
    # given a payload, return a token ({user_id: ?} => token)
    def encode(payload)
        JWT.encode(payload, secret_key, 'HS256')
    end
    # given a token, return a payload ("abc.123" => payload {user_id: ?})
    def decode(token)
        JWT.decode(token, secret_key, true, {algorithm: 'HS256'})[0]
    end


end
