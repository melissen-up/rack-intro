require 'rack'

# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_server = Proc.new do
content = "Hey there.<br> How's it going today?"
  [200, { 'Content-Type' => 'text/html' }, [content]]

end

run my_server