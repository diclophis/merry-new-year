
use Rack::Static,
  :urls => [
    "/"
  ],
  :root => "public"

run lambda { |env|
  [
    302,
    {
      'Location'  => '/index.html',
    },
    StringIO.new("")
  ]
}
