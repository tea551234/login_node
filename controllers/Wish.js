const db = require('../routes/db-config')


const Wish = async (req, res) => {
    const{ email,WishName } =req.body
   
    db.query('INSERT INTO userform SET ?', { email: email, WishName:WishName  }), async (err, result) => {
        if (err) throw err;
        return req.body
       
    }
}
module.exports = Wish