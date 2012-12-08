widgets = require 'widget'
tabs = require 'tabs'
self = require( 'self' )
data = self.data
panels = require( 'panel' )
network = require( 'request' )


show_panel = panels.Panel
    width: 300
    height: 400
    contentURL: data.url( "show.html" )
    contentScriptFile: data.url( "show.js" )


# show
show_panel.on 'show', () ->
    console.log "in show"
    show_panel.port.emit 'show',
        short_id: "av5bde"
        user_id: 6958082
        source: "api"
        width: 768
        height: 1024
        size: 153530
        type: "jpg"
        timestamp: "2012-09-16 07:25:10"
        
    return


addon_bar_button = widgets.Widget
    id: "twitpic-icon"
    label: "show image"
    contentURL: "http://twitpic.com/images/favicon.ico"
    panel: show_panel
