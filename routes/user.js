var express = require('express');
var router = express.Router();


const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient()
router.get('/list', async function (req, res, next) {
    let orderBy  = req.query;
    let bmi;

    if (orderBy === "asc") {
        bmi = await prisma.bmi.findMany({
            orderBy: {
                createdAt: 'asc',
            }
        });
    } else {
        bmi = await prisma.bmi.findMany({
            orderBy: {
                createdAt: 'desc',
            }
        });
    }

    res.send(bmi);
});


/* Get data. */
router.get('/', async function (req, res, next) {
    
    console.log(ip);
    let  id  = req.query.id;
    
    id = Number(id);
    const bmiResult = await prisma.bmi.findMany({
        where: {
            id,
        },
        
    });
    res.send({bmiResult, message: `Hello! Your IP address is: ${ip}`});
    // res.json({ message: `Hello! Your IP address is: ${ip}` })
});
module.exports = router;
