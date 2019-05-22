let pg = require('pg')
let client = new pg.Client(
    {
        user: 'web002',
        password: 'webd003',
        database: 'nsx',
        host: 'localhost',
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

app.set('view engine', 'ejs')
app.use(express.static(__dirname + '/assets'))

app.get('/', (req, res) => {
    res.render('index', {
        user: {
    
        },
        users: ['apple','samsung','sony']
    })
})

app.get('/api/getlist', (req, res) => {
    client.query('select * from farms', function(err, result) {
    res.send(JSON.stringify(result.rows))
    client.end()
})
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))