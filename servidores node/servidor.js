const express = require('express');
const fs = require('fs');
const path = require('path');

const app = express();
const PORT = 3000;

// 🔥 Middleware para processar JSON
app.use(express.json()); 

app.post('/criar-pasta', (req, res) => {
    console.log("Recebido:", req.body); // Log para verificar a entrada

    const { nomePasta } = req.body;

    if (!nomePasta) {
        return res.status(400).json({ erro: 'o nome da pasta e obrigatorio :-)' });
    }

    const pastaPath = path.join(__dirname, 'uploads', nomePasta);

    if (!fs.existsSync(pastaPath)) {
        fs.mkdirSync(pastaPath, { recursive: true });
        return res.json({ mensagem: `Pasta "${nomePasta}" criada com sucesso :-)` });
    } else {
        return res.status(400).json({ erro: 'A pasta ja existe :(' });
    }
});

app.listen(PORT, () => {
    console.log(`Servidor rodando em http://localhost:${PORT}`);
});