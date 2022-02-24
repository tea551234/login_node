const express = require('express')
const register = require('./register')
const login = require('./login')
// const logout = require('./logout')
const myform = require('./myform')
const Wish = require('./Wish')



// const router = express.Router
const router = require('express').Router();

// router.get('/logout',logout)

router.post('/login',login)
router.post('/register',register)


router.post('/myform',myform)
router.post('/Wish',Wish)


module.exports=router