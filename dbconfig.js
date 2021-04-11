// const config = {
//     user :'sa',
//     password :'admin',
//     server:'localhost',
//     database:'DonoationDB',
//     options:{
//         trustedconnection: true,
//         enableArithAbort : true, 
//         instancename :'MSSQLSERVER01'
//     },
//     port : 1445
// }
const mysql = require('mysql');

var config = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'root',
    database:'donationdb'
});


module.exports = config; 