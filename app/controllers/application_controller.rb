class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, 'moviesJam 2021 MJ')
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            # header: { 'Authorization': 'Bearer <token>' }
            begin
                JWT.decode(token, 'moviesJam 2021 MJ', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end
end
