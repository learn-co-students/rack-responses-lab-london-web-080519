class Application

    def call(env)
        resp = Rack::Response.new

        am_pm = Time.now.strftime("%P")

        if am_pm == "am"
            resp.write "Good Morning!"
        elsif am_pm == "pm"
            resp.write "Good Afternoon!"
        end

        resp.finish
    end

end