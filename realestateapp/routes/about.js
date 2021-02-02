//Default express requirments
var express = require('express');
var router = express.Router();


//If accessing 'http://localhost:3000/about'
router.get('/', function(req, res, next) {
  res.render('about', { 
    title: 'About | Real Estate App'     //Title
  });
});

module.exports = router;