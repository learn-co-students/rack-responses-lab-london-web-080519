class Application

    def call(env)
        resp = Rack::Response.new

        if Time.new.hour > 12
            resp.write "Good Afternoon!"
        else
            resp.wirte "Good Morning!"
        end

       

        resp.finish
    end
end
