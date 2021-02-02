//Default express requirments
var express = require('express');
var router = express.Router();


//If accessing 'http://localhost:3000/'
router.get('/', function(req, res, next) {
  res.render('index', { 
    title: 'Homepage | Real Estate App'     //Title
  });
});

module.exports = router;