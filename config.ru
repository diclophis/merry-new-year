
use Rack::Static,
  :urls => [
    "/index.html",
    "/merry-new-year.ogg",
    "/merry-new-year.gif",
    "/favicon.ico"
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
