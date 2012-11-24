class Todo.Views.ProjectsIndex extends Backbone.View

  template: JST['projects/index']

  events: {
    "click #create_project" : "create",
    "submit" : "t"
  }

  initialize: (hash) ->
    @collection.on("reset", @render, this)
    @collection.on("change", @render, this)

  render: ->
    $(@el).html(@template(name: "Andrii Serputko"))
    @collection.each(@show, this)
    this

  show: (model) ->
    view = new Todo.Views.ProjectsShow(model : model)
    console.log(model)
    $("#projects").append(view.render().el)

  create: ->
    @collection.create(
      {name : $("#new_project").val()}, 
      {success : @success, error : @error})

  success: (nextModel, resp, xhr) ->
    console.log "success"
    console.log nextModel
    console.log resp
    console.log xhr

  error: (msg) ->
    console.log "error"
    console.log msg

  t: -> alert(5)