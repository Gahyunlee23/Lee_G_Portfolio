var express = require('express');
var router = express.Router();

const sql = require('../utils/sql');

/* GET home page. */
router.get('/', (req, res) => {
  console.log('home is working');
  let query = 'SELECT p.ID, Title, Date, Image FROM tbl_projects p LEFT JOIN tbl_categories_projects l ON p.ID = l.Projects_ID LEFT JOIN tbl_categories c ON l.Categories_ID = c.ID GROUP BY p.Title';

  sql.query(query, (err, result) => {
    if (err) { throw err; console.log(err); }
    console.log(result);
    res.render('home', { project: result });
  })
})

router.get('/users/:id', (req, res) => {
  console.log('at your lightbox');
  console.log(req.params.id);


  let query = `SELECT p.ID, Title, Description, Learned, Tools, Image, c.Category FROM tbl_projects p LEFT JOIN tbl_categories_projects l ON p.ID = l.Projects_ID LEFT JOIN tbl_categories c ON l.Categories_ID = c.ID WHERE P.ID = "${req.params.id}"
  GROUP BY p.Title`;
  sql.query(query, (err, result) => {
    if (err) { throw err; console.log(err); }
    console.log(result);

    console.log(result);
    res.json(result[0]);
  })
})



module.exports = router;
