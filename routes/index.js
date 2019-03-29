var express = require('express');
var router = express.Router();

var connect = require('../utils/sqlConnect');

/* GET home page. */
router.get('/', function(req, res, next) {
// doa database query and get some of the hero data
connect.query(`SELECT * FROM movies`, (err, result) => {
if (err) {
  throw err;
  console.log(err);
}else{
  console.log(result);
  res.render('index', { movies: result });

}
});
});
// get individual data / bio info

/* GET home page. */
router.get('/:id', function(req, res, next) {
  // doa database query and get some of the movie data
  connect.query(`SELECT * FROM movies WHERE movie_id="${req.params.id}"`, (err, result) => {
  if (err) {
    throw err;
    console.log(err);
  }else{
    console.log(result);
    res.render('movie', { moviedata: result[0] });
  
  }
  });
  });
  
module.exports = router;
