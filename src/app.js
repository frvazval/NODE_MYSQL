import express from "express";
import path from "node:path";
const app = express();

import {connection} from "../mysql/mysql.js";


process.loadEnvFile();
const PORT = process.env.PORT || 3000;
app.get("/", (req, res) => {
    const query = "SELECT * FROM pelis";
    connection.query(query, (err, result, fields) => {
        if (err) throw err;
        res.json(result);
    })

});

app.listen(PORT, () => {console.log(`Servidor levantado en http://localhost:${PORT}`)})