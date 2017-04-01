'use strict';

const express = require('express');

// Constants
const PORT = 8089;

// App
const app = express();
app.get('/', function (req, res) {
   res.send('Hello world...\n');
});

app.use('/public', express.static('./public'));

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
