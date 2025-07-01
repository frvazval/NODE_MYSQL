import express from "express";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();

// Conecta con la base de datos
import {connection} from "../mysql/mysql.js";


process.loadEnvFile();
const PORT = process.env.PORT || 3000;

// Ruta de los ficheros estaticos (css, javascript, etc...)
app.use(express.static(path.join(__dirname, "..", "public")));

// Ruta de las plantillas
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "..", "views"));

app.get("/", (req, res) => {
    const query = "SELECT * FROM pelis";
    connection.query(query, (err, result, fields) => {
        if (err) throw err;
        // res.json(result);

        res.render("index", {result});
    });

});

app.get("/peli/:id", (req, res) => {
    const id = req.params.id;
    res.send("ok");
})

app.listen(PORT, () => {console.log(`Servidor levantado en http://localhost:${PORT}`)})