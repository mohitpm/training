run Proc.new do |env|
  ['200' , {'Content-Type' => 'text/html'}, ['Hello, world'] ]
end
