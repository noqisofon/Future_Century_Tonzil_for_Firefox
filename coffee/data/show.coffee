self.port.on 'show', (arg) ->
    picture = document.getElementById "picture"
    self.port.emit( 'init', picture )
