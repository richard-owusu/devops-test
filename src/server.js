const express = require('express')
const app = express();

app.get('/',(req,res)=>{
    res.send("Welcome to my first awesome app - Richard")
})

app.listen(3000,function(){
    console.log("listening to port 3000")
})