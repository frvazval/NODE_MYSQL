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
   
    const query = `SELECT d.nombre_director, g.nombre_genero, p.titulo_peli, p.fecha, p.imagen_peli, p.valoracion, p.sinopsis
                    FROM directores d
                    NATURAL JOIN pelis p
                    NATURAL JOIN pelis_generos pg
                    NATURAL JOIN generos g
                    WHERE p.id_peli = ${id}`;

    connection.query(query, (err, result, fields) => {
        if (err) throw err;        

        res.render("peli", {result});
    });
    
    
})

app.listen(PORT, () => {console.log(`Servidor levantado en http://localhost:${PORT}`)})