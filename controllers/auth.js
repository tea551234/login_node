const express = require('express')
const register = require('./register')
const login = require('./login')
const logout = require('./logout')
const myform = require('./myform')
// const router = express.Router
const router = require('express').Router();


router.post('/login',login)
router.post('/register',register)
router.post('/myform',myform)
router.get('/logout',logout)



module.exports=router