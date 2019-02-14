const path = require('path');
const express = require('express');
const db = require('../database/controllers');
const app = express();

app.use((req, res, next) => {
  console.log(`Incoming ${req.method} from ${req.path} with ${req.query.name}`);
  next();
});

app.use(express.static(path.join(__dirname, '../public')));

app.listen(3000);
