const qs=require('querystring');
const pool=require('./pool');
module.exports={
  getAll:(req,res)=>{
    pool.getConnection((err,conn)=>{
      conn.query('SELECT * FROM f_msg',(err,result)=>{
        res.json(result);
        conn.release();
      })
    })
  },
  getPhoto:(req,res)=>{
    pool.getConnection((err,conn)=>{
      conn.query('SELECT * FROM f_product',(err,result)=>{
        res.json(result);
        conn.release();
      })
    })
  },
  register:(req,res)=>{
    req.on('data',(buf)=>{
      var obj=qs.parse(buf.toString());
      pool.getConnection((err,conn)=>{
        conn.query('INSERT INTO f_login VALUES (null,?,?)',[obj.uname,obj.upwd],(err,result)=>{
          var output={
            code:1,
            msg:'注册成功',
            uid:result.insertId
          };
          res.json(output);
          conn.release();
        })
      })
    })
  },
  login:(req,res)=>{
    req.on('data',(buf)=>{
      var obj=qs.parse(buf.toString());
      pool.getConnection((err,conn)=>{
        conn.query('SELECT id FROM f_login WHERE uname=? AND upwd=?',[obj.uname,obj.upwd],(err,result)=>{
          if(result.length>0){
            var output={
              code:1,
              msg:'登陆成功',
              uid:result[0].id
            }
          }else{
            var output={
              code:2,
              msg:'用户名或密码错误'
            }
          }
          res.json(output);
          conn.release();
        })
      })
    })
  }
};

