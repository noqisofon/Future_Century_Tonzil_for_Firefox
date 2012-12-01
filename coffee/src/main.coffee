widgets = require 'widget'
tabs = require 'tabs'
self = require( 'self' )
data = self.data
panels = require( 'panel' )
network = require( 'request' )

show_panel = panels.Panel
    width: 250
    height: 400
    contentURL: data.url( "show.html" )
    contentScriptFile: data.url( "show.js" )


# init
show_panel.port.on 'init', (image_element) ->
    console.log "in init"
    return

# picture-mouseup
show_panel.port.on 'picture-mouseup', (mouse_event) ->
    console.log "in picture-mouseup"
    console.log field for field in mouse_event
    return

# show
show_panel.on 'show', () ->
    console.log "in show"
    show_panel.port.emit "show"
    return


addon_bar_button = widgets.Widget
    id: "imgly-icon"
    label: "show image"
    contentURL: "http://img.ly/assets/favicon-a1b5a899dcd5f68a9feb9e80b4b63935.ico"
    panel: show_panel
