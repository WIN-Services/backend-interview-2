require('dotenv').config();
const express = require('express')

//server routes 
const orderRoutes = require('./routes/order')

//sequelize db dependecy injected at runtime to make it loose coupled. helps to provide testing or even mock db as well.
module.exports = function(sequelize, startServer) {
    console.log("initialising...")
    const app = express()
    
    app.use(express.json())
    app.use(express.urlencoded({ extended: true }))

    app.use(orderRoutes)
    
    app.get('/', (req, res) => {
        console.log('GET / homepage request')
        res.send('Hello World!')
    })

    sequelize
    .sync({force: true})
    // .sync()
    .then((result) => {
        console.log('connection established to postgres');
        startServer(app);
        // return Order.create({total: 1200021})
    })
    //   .then(orders => {
        //     console.log("order created : ", orders.dataValues );
    //   })
    .catch((err) => {
        console.log('Error in connecting to Postgres db', err);
    });
    
}