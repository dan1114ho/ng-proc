var express = require('express');
var router = express.Router();
const uuidv4 = require('uuid/v4');

/* GET new guid. */
router.get('/', function(req, res, next) {
  res.send(uuidv4());
});

module.exports = router;
