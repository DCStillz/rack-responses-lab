class Application

    def call(env)
        resp = Rack::Response.new
        if Time.now.getlocal("-05:00").hour.between?(0, 12)
            resp.write "Good Morning"
        else
            resp.write "Good Afternoon"
        end
        resp.finish
    end
end