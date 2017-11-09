Hapi = require 'hapi'

server = new Hapi.Server()
server.connection
  host: 'localhost'
  port: 8000

server.route
  method: 'GET'
  path: '/hello'
  handler: (request, reply) ->
    reply 'hellooo'

server.start (error) ->
  if error
    throw error

  console.log 'Server running at:', server.info.uri
