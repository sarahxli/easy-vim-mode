EasyVimModeView = require './easy-vim-mode-view'

module.exports =
  easyVimModeView: null

  activate: (state) ->
    @easyVimModeView = new EasyVimModeView(state.easyVimModeViewState)

  deactivate: ->
    @easyVimModeView.destroy()

  serialize: ->
    easyVimModeViewState: @easyVimModeView.serialize()
