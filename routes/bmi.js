var express = require('express');
var router = express.Router();

const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient()

/* Post data. */
router.post('/', async function(req, res, next) {
    const age = parseInt(req.query.age);
    gender = req.query.gender;

    if (gender == "female"){
        gender = false;
    }else{
        gender = true;
    }
    console.log(gender);

    const ipAddress = req.socket.remoteAddress;
    const weight = parseInt(req.query.weight);
    const height = parseFloat(req.query.height);
    const bmi = weight / ((height / 100) ^ 2) ;
    const createdBmi = await prisma.bmi.create({
        data: {
            age: age,
            gender: gender,
            weight: weight,
            height: height,
            bmi: bmi,
            Ip  : ipAddress,
        }
    });

    res.send(createdBmi);
});
module.exports = router;