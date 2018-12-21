var express = require('express');
var router = express.Router();
const { sql, request } = require('../lib/database')

/* GET customer listing. */
router.get('/', async function(req, res, next) {
  const dbreq = await request();
  await dbreq.query('select * from credmo.dbo.customer')
    .then(result => {
      res.send(result);
    })
    .catch(console.error)
  ;//execute
  
  //res.send('respond with a resource');
});

module.exports = router;
