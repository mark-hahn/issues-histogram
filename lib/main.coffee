
# lib/main

IssuesHistogram = require './issues-histogram'
SubAtom = require 'sub-atom'

module.exports =
  activate: -> 
    @subs = new SubAtom
    @subs.add atom.commands.add 'atom-workspace', 'issues-histogram:open': ->
      atom.workspace.getActivePane().activateItem new IssuesHistogram

  deactivate: ->
    @subs.dispose()
    