let pg = require('pg')
let env = require('dotenv').config()
let client = new pg.Client(
    {
        user: process.env.DB_USER,
        password: process.env.DB_PASS,
        database: process.env.DB_NAME,
        host: process.env.DB_POST,
        port: 5432
    }
)

client.connect()

//client.query('select * from dm_nv', function(err, result) {
//    console.log(err, result.rows)
//})

const express = require('express')
const app = express()
const port = 3000


console.log(env)

app.set('view engine', 'ejs')
app.use(express.static(__dirname + '/assets'))

app.get('/', (req, res) => {
    client.query('select * from farms', function(err, result){
        res.render('index', {
            data: result.rows
        })
    })
})

app.get('/api/getlist', (req, res) => {
    client.query('select * from farms', function(err, result) {
    res.send(JSON.stringify(result.rows))
    client.end()
})
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))

app.get('/api/getlist/:id', (req, res) => {
    //let id = req.params.id
    //if(Number(id) == NaN)
    let sql = 'select * from products where id=${req.params.id}'
    console.log(req.params, sql)
    //client.query('select * from farms', function(err, result) {
    //res.send(JSON.stringify(result.rows))
    //client.end()
//})
})