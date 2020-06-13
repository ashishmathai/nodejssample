var express = require('express');
var app = express();

//Hello
//Again Test automated new builds, when git is commited, it pushes to DockerHub

app.get('/', function (req, res) {
  res.send('Hello World!');
});

var server = app.listen(3000, function () {
  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);
});
