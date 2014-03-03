{View} = require 'atom'

module.exports =
class EasyVimModeView extends View
  @content: ->
    @div class: 'easy-vim-mode overlay from-top', =>
      @div "The EasyVimMode package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "easy-vim-mode:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "EasyVimModeView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
