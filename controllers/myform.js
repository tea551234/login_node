const db = require('../routes/db-config')


const myform = async (req, res) => {
    const{ email, productName , problem} =req.body
    db.query('INSERT INTO form SET ?', { email: email, productName:productName  ,problem:problem}), async (err, result) => {
        if (err) throw err;
        return req.body
       
    }
}
module.exports = myform