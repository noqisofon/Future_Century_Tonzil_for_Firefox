widgets = require 'widget'
tabs = require 'tabs'
self = require( 'self' )
data = self.data
panels = require( 'panel' )
network = require( 'require' )

show_panel = panels.Panel
    width: 250
    height: 400
    contentURL: data.url( "show.html" )
    contentScriptFile: data.url( "show.js" )

show_panel.on 'show', () ->
    console.log "show"
    show_panel.port.emit "show"

show_panel.on 'init', () ->
    console.log "init"

addon_bar_button = widgets.Widget
    id: "imgly-icon"
    label: "show image"
    contentURL: "http://img.ly/assets/favicon-a1b5a899dcd5f68a9feb9e80b4b63935.ico"
    panel: show_panel

