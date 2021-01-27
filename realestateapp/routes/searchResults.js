//Default express requirments
var express = require('express');
var router = express.Router();


//If accessing 'http://localhost:3000/searchresults'
router.get('/', function(req, res, next) {
  res.render('searchResults', { 
    title: 'Search Results | Real Estate App'     //Title
  });
});

module.exports = router;