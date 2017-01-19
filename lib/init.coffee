atom.workspace.observeTextEditors (editor) ->
    if editor.getTitle() isnt "untitled"
        sp = editor.getPath().split('/')
        title = sp.slice(sp.length-2).join('/')
        #editor.getTitle = -> title
        editor.getLongTitle = -> title

for item in atom.workspace.getPaneItems()
    if item.emitter?
        item.emitter.emit "did-change-title", item.getTitle()
