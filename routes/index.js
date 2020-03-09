var express = require('express');
var router = express.Router();
var sql = require('mysql');
var session = require('express-session');
//var sanitizer = require('sanitizer');
const bodyParser = require('body-parser');

//mysql://bc2e44d8745032:88021a23@eu-cdbr-west-02.cleardb.net/heroku_8fbefb59a0dd04a?reconnect=true


/*const conn = sql.createConnection({
	host:'localhost',
	user:'dev',
	password:'password',
	database:'solasta_db'	
});*/

const conn = sql.createConnection({
	host:'eu-cdbr-west-02.cleardb.net',
	user:'bc2e44d8745032',
	password:'88021a23',
	database:'heroku_8fbefb59a0dd04a'	
});

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', {title: 'Express'});
});

router.get('/event_details/:id/:cat', function(req, res, next) {
	if(req.params.id == 0)
	{
		conn.query(`select * from solasta20main where tech_cult = 'Technical' and category = '${req.params.cat}'`, function(err, result){
			if(err) throw err;
			if(result.length === 0)
			{
				res.send(404);
			}
			else
			{
				res.send(result);
			}
		});
	}
	else if(req.params.id == 1)
	{
		conn.query(`select * from solasta20main where tech_cult = 'Cultural' and category = '${req.params.cat}'`, function(err, result){
			if(err) throw err;
			if(result.length === 0)
			{
				res.send(404);
			}
			else
			{
				res.send(result);
			}
		});
	}
	else
	{
		res.send(404);
	}
})


module.exports = router;
