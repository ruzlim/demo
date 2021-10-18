// console.log('Hello World')

const express = require('express')

const app = express()

let date = new Date()

app.get('/', (req, res) => res.send('Hello World!!!' + '<br>' + date.toLocaleString()))
// app.get('/', (req, res) => res.send(date.toString() + ' : dt1'))
// app.get('/', (req, res) => res.send(date.toLocaleString() + ' : dt2'))

app.listen(3000, () => console.log('Example app listening on port 3000!'))
