var Db = require('./dboperation');
var Customer = require('./customers');
const dboperation = require('./dboperation');

var express = require('express');
var bodyParser = require('body-parser');
var cors = require('cors');
var app = express();
var router = express.Router();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());
app.use('/api', router);

router.use((request,response,next)=>{
    console.log('middleware');
    next();
 })

 router.route('/donation').get((request,response)=>{
     console.log("api called");
})

// router.route('/logincheck').post(dboperation.APILoginRequest);

router.route('/loginRequest').post(dboperation.APILoginRequest);

router.route('/changepassword').post(dboperation.APIChangePassword);

 router.route('/donorSignup').post(dboperation.APIRegisterDonor);

 router.route('/getAllReciever').post(dboperation.APIGetAllReciever);

 router.route('/getAllDonor').post(dboperation.APIGetAllDonor);

 router.route('/getDonor').post(dboperation.APIGetDonor);

 router.route('/getLastLogin').post(dboperation.APIGetLastlogin);



var port = process.env.PORT || 8050;
app.listen(port);
console.log('API is running at ' + 'http://localhost:' + port + '/api/');
