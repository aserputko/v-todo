class Todo.Routers.Todos extends Backbone.Router

	routes:
		"": "home",
		"sync": "sync"

	initialize: ->
		@projects = new Todo.Collections.Projects
		@projects.fetch()
		view = new Todo.Views.ProjectsIndex(collection : @projects)
		$('#content').html(view.render().el)

	home: ->
		console.log "home"

	sync: ->
		console.log "sync"
