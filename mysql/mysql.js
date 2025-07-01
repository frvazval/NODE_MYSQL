import mysql from "mysql2";

process.loadEnvFile();

const configConnection = {
    host : process.env.DB_HOST,
    user : process.env.DB_USER,
    password : process.env.DB_PASSWORD,
    port : process.env.DB_PORT,
    database : process.env.DATABASE
};

export const connection = mysql.createConnection(configConnection);