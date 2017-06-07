const mysql=require('mysql');
const http=require('http');
const express=require('express');
const fmf=require('./fmf');

var app=express();
http.createServer(app).listen(8080);
app.use(express.static('public'));
app.get('/',(req, res)=>{
  res.redirect('index.html');
});
app.get('/msg',fmf.getAll);
app.get('/photo',fmf.getPhoto);
app.post('/register',fmf.register);
app.post('/login',fmf.login);