const config = {
    user :'sa',
    password :'admin',
    server:'localhost',
    database:'DonoationDB',
    options:{
        trustedconnection: true,
        enableArithAbort : true, 
        instancename :'MSSQLSERVER01'
    },
    port : 1445
}

module.exports = config; 