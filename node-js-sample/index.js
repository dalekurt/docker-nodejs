var express = require('express')
var app = express();

app.set('port', (process.env.PORT || 5000))
app.use(express.static(__dirname + '/public'))

app.get('/', function(request, response) {
  response.send('Hello World!')
})

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'))
})

var logentries = require('./')({
  json: false, // or true to parse lines as JSON
  secure: false, // or true to connect securely
  token: process.env.e062dc9f-05ef-4fa8-b217-c7fcd38c9e9a
});

// logentries is the source stream with all the
// log lines

setTimeout(function() {
  logentries.destroy()
}, 1000);
