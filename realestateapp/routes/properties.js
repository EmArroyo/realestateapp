//Default express requirments
var express = require('express');
var router = express.Router();


//Require DB
var db=require('../database');

//If accessing 'http://localhost:3000/properties'
router.get('/', function(req, res, next) {

  //SQL Command
  var sql='SELECT * FROM properties';

  //Run query
  db.query(sql, function (err, data, fields) {

    //If there is an error, thow error
    if (err) throw err;
    
    //Render view from 'views/properties.js'
    res.render('properties', { 
      title: 'Properties | Real Estate App',
      properties: data   //Store MySQL returned data to 'propertyListingData'
    });
  })

});

module.exports = router;