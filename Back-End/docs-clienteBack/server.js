const express = require('express');
const multer = require('multer');
const cors = require('cors');
const { Pool } = require('pg');
const path = require('path');

const app = express();
app.use(cors());
app.use(express.json());

const pool = new Pool({
    user: "postgres",
    host: "localhost",
    database: "mossmann",
    password: "postgre",
    port: 5432,
});

//config do multer para uploads de pastas
const storage = multer.diskStorage({
    destination: "uploads/",
    filename: (req, file, cb) => {
        cb(null, `${Date.now()}-${file.originalname}`);
    },
});
const upload = multer({ storage });

//rota para salvar no banco
app.post("/uploads", upload.single("arquivo"), async (req, res) => {
    try {
        const { clientes, vencimento, informacoes } = req.body;
        const arquivo = req.file.filename;

        if (!clientes || !arquivo) {
            return res.status(400).json({ erro: "Cliente e arquivo são obrigatórios!" });
        }

        //converte a string de clientes para um array
        const clientesArray = JSON.parse(clientes);

        //sallva cada cliente no banco de dados
        for (const cliente of clientesArray) {
            await pool.query(
                "INSERT INTO documentos (cliente, arquivo, vencimento, informacoes) VALUES ($1, $2, $3, $4)",
                [cliente, arquivo, vencimento || null, informacoes || ""]
            );
        }

        res.json({ mensagem: "Upload realizado com sucesso!! :)" });
    } catch (error) {
        console.error("Erro no upload:", error);
        res.status(500).json({ erro: "Erro ao salvar no banco de dados :(" });
    }
});

//inicia o servidor na por4000
app.listen(4000, () => {
    console.log("Servidor rodando na porta 4000");
});