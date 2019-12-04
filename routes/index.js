var express = require('express');
var router = express.Router();
var sql = require('mysql');

/* GET home page. */
router.get('/', req, res) => {
  console.log('hi im working');

  let query = 'SELECT * FROM tbl_projects';

  sql.query(query, (err, result) => {
    if (err) { throw err; console.log(err); }
    console.log(result);
    res.render('home', { project: result })
  })
}

module.exports = router;
