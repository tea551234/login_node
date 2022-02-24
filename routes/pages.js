const express = require('express');
const res = require('express/lib/response');
const loggedIn = require('../controllers/loggedin');
const logout =require('../controllers/logout')
const router = express.Router();

router.get('/', loggedIn, (req, res) => {
    if (req.user) {
        res.render('index', { status: 'loggedIn', user: req.user });
    }else{
        res.render('index' , {status:'no' , user:'nothing'})
    }
})

router.get('/register', (req, res) => {
    res.sendFile("register.html", { root: "./public" })
    
})
router.get('/myform', (req, res) => {
    res.sendFile("myform.html", { root: "./public" })
    
})

router.get('/Wish', (req, res) => {
    res.sendFile("Wish.html", { root: "./public" })
    
})


router.get('/login', (req, res) => {
    res.sendFile("login.html", { root: "./public" })
    
})
    
router.get('/logout', logout)





module.exports = router