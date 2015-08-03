require 'rack'

app = Proc.new do |env|
  ['200' , {'Content-Type' => 'text/html'}, ['<script="javascript">Hello, world</script>'] ]
end

Rack::Handler::WEBrick.run app
