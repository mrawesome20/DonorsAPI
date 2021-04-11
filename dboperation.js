var sqlconfig = require('./dbconfig');
const sql = require('mssql');


function APIChangePassword(request,response){
    console.log('APIChangePassword');
    let body = {...request.body};
    try{
    //  sqlconfig.connect((err)=>{ 
    //      if(!err){
             sqlconfig.query("CALL USP_Login_Update(?,?,?)",
             [body.username,body.password,'update'],
             (err,rows,fields)=>{
                 if(!err){
                     response.status(201).json(JSON.parse(JSON.stringify(rows)));
                 }else{
                     console.log('Query Error => ' + err);
                     response.status(400).json(err);        
                 }                
             });
    //      }else{
    //          console.log('Sql Connection Error => ' + err);
    //          response.status(400).json(err);
    //      }
    //  });
    }catch(error){
         console.log('Something went wrong => ' + err);
         response.status(400).json(error);
    }
}

function APIGetAllReciever(request,response){
    console.log('APIGetAllReciever');
    let body = {...request.body};
    try{
    //  sqlconfig.connect((err)=>{ 
    //      if(!err){
             sqlconfig.query("Select * from donationdb.tbl_recieverinfo",///No Parameters,
             (err,rows,fields)=>{
                 if(!err){
                     console.log(rows);
                     response.status(201).json(JSON.parse(JSON.stringify(rows)));
                 }else{
                     console.log('Query Error => ' + err);
                     response.status(400).json(err);        
                 }                
             });
    //      }else{
    //          console.log('Sql Connection Error => ' + err);
    //          response.status(400).json(err);
    //      }
    //  });
    }catch(error){
         console.log('Something went wrong => ' + err);
         response.status(400).json(error);
    }
}

function APIGetAllDonor(request,response){
    console.log('APIGetAllDonor');
    let body = {...request.body};
    try{
    //  sqlconfig.connect((err)=>{ 
    //      if(!err){
             sqlconfig.query("Select * from donationdb.tbl_donorinfo",///No Parameters,
             (err,rows,fields)=>{
                 if(!err){
                     response.status(201).json(JSON.parse(JSON.stringify(rows)));
                 }else{
                     console.log('Query Error => ' + err);
                     response.status(400).json(err);        
                 }                
             });
    //      }else{
    //          console.log('Sql Connection Error => ' + err);
    //          response.status(400).json(err);
    //      }
    //  });
    }catch(error){
         console.log('Something went wrong => ' + err);
         response.status(400).json(error);
    }
}


function APIGetDonor(request,response){
    console.log('APIGetDonor');
    let body = {...request.body};
    try{
    //  sqlconfig.connect((err)=>{ 
    //      if(!err){
             sqlconfig.query("Select * from donationdb.tbl_donorinfo where username = (?)",[body.username],
             (err,rows,fields)=>{
                 if(!err){
                     response.status(201).json(JSON.parse(JSON.stringify(rows)));
                 }else{
                     console.log('Query Error => ' + err);
                     response.status(400).json(err);        
                 }                
             });
    //      }else{
    //          console.log('Sql Connection Error => ' + err);
    //          response.status(400).json(err);
    //      }
    //  });
    }catch(error){
         console.log('Something went wrong => ' + err);
         response.status(400).json(error);
    }
}

function APIGetLastlogin(request,response){
    console.log('APIGetLastlogin');
    let body = {...request.body};
    try{
    //  sqlconfig.connect((err)=>{ 
    //      if(!err){
             sqlconfig.query("select CAST(CONVERT(last_login,DATETIME) AS char) as last_login from donationdb.tbl_applog where username = (?) order by last_login desc limit  1",
             [body.username],
             (err,rows,fields)=>{
                 if(!err){
                     response.status(201).json(JSON.parse(JSON.stringify(rows)));
                 }else{
                     console.log('Query Error => ' + err);
                     response.status(400).json(err);        
                 }                
             });
    //      }else{
    //          console.log('Sql Connection Error => ' + err);
    //          response.status(400).json(err);
    //      }
    //  });
    }catch(error){
         console.log('Something went wrong => ' + err);
         response.status(400).json(error);
    }
 }

function APIRegisterDonor(request,response){
    console.log('APIRegisterDonor');
    let body = {...request.body};
    console.log(body);
    try{
    //  sqlconfig.connect((err)=>{ 
    //      if(!err){
             sqlconfig.query("CALL USP_CRUD_Donorinfo(?,?,?,?,?,?,?,?,?,?,?,?,?)",
             [body.username,body.firstname,body.lastname,body.gender,body.Dob,
                body.password,body.street,body.zipcode,body.city,
                body.country,body.phone,body.emailid,'insert'],
             (err,rows,fields)=>{
                 if(!err){
                     console.log(rows);
                     response.status(201).json(JSON.parse(JSON.stringify(rows)));
                }else{
                     console.log('Query Error => ' + err);
                     response.status(400).json(err);      
                 }                
             });
    //      }else{
    //          console.log('Sql Connection Error => ' + err);
    //          response.status(400).json(err);
    //      }
    //  });
    }catch(error){
         console.log('Something went wrong => ' + err);
         response.status(400).json(error);
    }
 }

function APILoginRequest(request,response){
   console.log('APILoginRequest');
   let body = {...request.body};
   let username = body.username;
   let password = body.password;
   try{
    // sqlconfig.connect((err)=>{ 
    //     if(!err){
            sqlconfig.query("CALL USP_Login_Update(?,?,?)",[username,password,'Login'],
            (err,rows,fields)=>{
                if(!err){
                    response.status(201).json(JSON.parse(JSON.stringify(rows)));
                }else{
                    console.log('Query Error => ' + err);
                    response.status(400).json(err);        
                }                
            });
    //     }else{
    //         console.log('Sql Connection Error => ' + err);
    //         response.status(400).json(err);
    //     }
    // });
   }catch(error){
        console.log('Something went wrong => ' + err);
        response.status(400).json(error);
   }
}



module.exports = {
    APILoginRequest:APILoginRequest,
    APIRegisterDonor:APIRegisterDonor,
    APIGetLastlogin:APIGetLastlogin,
    APIChangePassword:APIChangePassword,
    APIGetAllReciever:APIGetAllReciever,
    APIGetAllDonor:APIGetAllDonor,
    APIGetDonor:APIGetDonor
}