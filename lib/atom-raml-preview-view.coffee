{View} = require 'atom'

module.exports =
class AtomRamlPreviewView extends View
  @content: ->
    @div class: 'atom-raml-preview overlay from-top', =>
      @div "The AtomRamlPreview package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "atom-raml-preview:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "AtomRamlPreviewView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
