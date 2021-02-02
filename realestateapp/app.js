var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');


//Add routes here
var indexRouter = require('./routes/index');                        //Homepage
var propertyListingRouter = require('./routes/propertyListing');    //Property Listing
var aboutRouter = require('./routes/about');                        //About
var propertiesRouter = require('./routes/properties');
var searchResultsRouter = require('./routes/searchResults');        //Search Results
var contactRouter = require('./routes/contact');                    //Contact


var app = express();


//View engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


//Define usage of the route
app.use('/', indexRouter);                              //Homepage
app.use('/propertylisting', propertyListingRouter);     //Property Listing
app.use('/about', aboutRouter);                         //About
app.use('/properties', propertiesRouter);               //Properties     
app.use('/searchresults', searchResultsRouter);         //Search Results
app.use('/contact', contactRouter);                     //Contact


//Catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});


//Error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});


module.exports = app;
