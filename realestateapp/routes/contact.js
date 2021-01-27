//Default express requirments
var express = require('express');
var router = express.Router();


//If accessing 'http://localhost:3000/contact'
router.get('/', function(req, res, next) {
  res.render('contact', { 
    title: 'Contact | Real Estate App'     //Title
  });
});

module.exports = router;