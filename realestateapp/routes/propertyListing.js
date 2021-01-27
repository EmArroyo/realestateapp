//Default express requirments
var express = require('express');
var router = express.Router();

//Require DB
var db=require('../database');


//If accessing 'http://localhost:3000/propertylisting/:id' with ID appended
//E.g. http://localhost:3000/propertylisting/2
router.get('/:id', function(req, res, next) {

    //SQL Command
    var sql='SELECT * FROM properties WHERE id = ' + req.params.id;

    //Run query
    db.query(sql, function (err, data, fields) {

    //If there is an error, thow error
    if (err) throw err;
    
    //Render view from 'views/propertyListing.js'
    res.render('propertyListing', { 
      title: 'Property Listing | Real Estate App',
      propertyListingData: data   //Store MySQL returned data to 'propertyListingData'
    });
  });
});


/*
//This is an example of sub-page url:

//If accessing 'http://localhost:3000/propertylisting/test'
router.get('/test', function(req, res, next) {
  var sql='SELECT * FROM properties';
  db.query(sql, function (err, data, fields) {
    if (err) throw err;
    res.render('propertyListing', { title: 'Property Listing', propertyListingData: data});
  });
});
*/


module.exports = router;