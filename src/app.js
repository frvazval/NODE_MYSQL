import express from "express";
import path from "node:path";
const app = express();

process.loadEnvFile();
const PORT = process.env.PORT || 3000;
app.get("/", (req, res) => {
    res.send("Todo OK");
});

app.listen(PORT, () => {console.log(`Servidor levantado en http://localhost:${PORT}`)})