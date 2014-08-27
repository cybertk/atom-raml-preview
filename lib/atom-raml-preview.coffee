AtomRamlPreviewView = require './atom-raml-preview-view'

module.exports =
  atomRamlPreviewView: null

  activate: (state) ->
    @atomRamlPreviewView = new AtomRamlPreviewView(state.atomRamlPreviewViewState)

  deactivate: ->
    @atomRamlPreviewView.destroy()

  serialize: ->
    atomRamlPreviewViewState: @atomRamlPreviewView.serialize()
