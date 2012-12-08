// Generated by CoffeeScript 1.4.0

self.port.on('show', function(arg) {
  var frame, image, panel_layout;
  console.log("in port show");
  if (arg == null) {
    console.error('arg is null');
    return;
  }
  panel_layout = document.getElementById('panel-layout');
  frame = document.getElementById('frame');
  if (frame === null) {
    frame = document.createElement('div');
    frame.id = 'frame';
    panel_layout.appendChild(frame);
  }
  console.log(arg.timestamp);
  image = document.getElementById("image_" + arg.short_id);
  if (image === null) {
    image = document.createElement('img');
    image.id = "image_" + arg.short_id;
    image.src = "http://twitpic.com/show/thumb/" + arg.short_id;
    console.log(image.src);
    frame.appendChild(image);
  }
});
