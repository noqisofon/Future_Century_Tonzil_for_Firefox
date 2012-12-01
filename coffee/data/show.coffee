self.port.on 'show', (arg) ->
    picture = document.getElementById "picture"
    #alert arg
    self.port.emit 'init', picture

self.port.on 'init', (arg) ->
    alert "in init"
