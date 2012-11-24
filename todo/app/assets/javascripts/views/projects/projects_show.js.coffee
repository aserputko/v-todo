class Todo.Views.ProjectsShow extends Backbone.View

  template: JST['projects/show']

  events: {
    "click #destroy_project" : "destroy"
  }

  initialize: () ->
  	@model.on("change", @render, this)

  render: ->
  	$(@el).html(@template(project: @model.toJSON()))
  	this

  destroy: ->
  	@model.destroy()
  	@model.clear()