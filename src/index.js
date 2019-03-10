const express = require('express')
const app = express()
const port = process.env.PORT || 3000

app.get('/', (req, res) => res.send(`Running ${process.env.NODE_ENV} enviroment`))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))