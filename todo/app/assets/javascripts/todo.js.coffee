window.Todo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new Todo.Routers.Todos
  	Backbone.history.start()

$(document).ready ->
  Todo.initialize()

