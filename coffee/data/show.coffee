picture = document.getElementById "picture"

picture_on_mouse_up = (event) ->
    self.port.emit 'picture-mouseup', event

if picture.addEventListener
    picture.addEventListener 'mouseup', picture_on_mouse_up
#else if picture.attachEvent

self.port.on 'show', (arg) ->
    self.port.emit 'init'
    return
