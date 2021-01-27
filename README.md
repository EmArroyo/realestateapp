# Real Estate Project
* Author: Bethany Fitton
* Notes: Built with help from <https://codingstatus.com/how-to-install-express-application-using-express-generator-tool/> and <https://codingstatus.com/how-to-display-data-from-mysql-database-table-in-node-js/>

## Setup notes

1. Install NPM (if not already installed)
2. Install Node JS (if not already installed)
2. Change directory to 'realestateapp': ```cd realestateapp```
3. Run ```npm install```.
4. Import the .sql file within this repo to your MySQL server and add your connection details to ```database.js```.
5. Run start your MySQL server, otherwise you will see an error message when running the next step.
6. Run ```npm start```, you should receive this message 'Database connected.'.


## Pages setup

* Homepage: <http://localhost:3000/>
* Property listings: 
** <http://localhost:3000/propertylisting/1>
** <http://localhost:3000/propertylisting/2>
** <http://localhost:3000/propertylisting/3>
** <http://localhost:3000/propertylisting/4>
** <http://localhost:3000/propertylisting/5>
** <http://localhost:3000/propertylisting/6>
* About: <http://localhost:3000/about>
* Search results: <http://localhost:3000/searchresults>
* Contact: <http://localhost:3000/contact>

Edit the front end view within ```realestateapp/views/```

Edit the back-end view within ```realestateapp/routes/```


## Notes
Carousel using bootstrap -getbootstrap.com
google maps using the embed a map function from google maps
tabs - using bootstrap navs
https://stackoverflow.com/questions/20089582/how-to-get-a-url-parameter-in-express