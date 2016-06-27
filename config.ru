# tells the server where the file that needs to be loaded to start the
# application is and then tell it to run it as a sinatra app
require File.dirname(__FILE__) + "main"
run Sinatra::Application
