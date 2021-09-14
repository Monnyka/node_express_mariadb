const express = require('express')

const PORT = process.env.PORT || '3000'

const app = express()

/**
 * Middleware
 */

app.use(express.json())
app.use(express.urlencoded({extended:false}))

/**
 * Routes
 */
app.get('/', (request, response)=>{
    response.status(200).json({
        "name": "Leon Pin", age : 26
    })
})

/**
 * Start Port
 */

app.listen(PORT, () =>{
    console.log('Listening for request on port ${PORT}')
})