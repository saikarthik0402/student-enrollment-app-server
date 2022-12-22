var express = require('express');
var path = require('path');
var cors = require('cors');


var app = express();

app.use(express.static('dist/studentenrollment-app/'));

app.get('*', (req, res) => {
    res.sendFile(path.resolve('./dist/studentenrollment-app/index.html'));
});

app.listen(4200, () => {
  console.log('Server running on port 4200')
})