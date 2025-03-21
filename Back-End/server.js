const express = require('express');
const { Pool } = require('pg');
const bcrypt = require('bcryptjs');
const bodyParser = require('body-parser');
const cors = require('cors');  
const { JsonWebTokenError } = require('jsonwebtoken');
const app = express();
const port = 3000;
const jwt = require('jsonwebtoken');


app.use(cors());
app.use(bodyParser.json());

//config do postgre
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'mossmann',
  password: 'postgre',
  port: 5432,
});

//rota para cadastrar usuario 
app.post('/cadastro', async (req, res) => {
  const { nome, email, senha } = req.body;

  if (!nome || !email || !senha) {
    return res.status(400).json({ erro: 'Todos os campos são obrigatórios.' });
  }

  try {
    //vai verificar se o email ta no banco de dados 
    const result = await pool.query('SELECT * FROM usuarios WHERE email = $1', [email]);
    if (result.rows.length > 0) {
      return res.status(400).json({ erro: 'E-mail já cadastrado.' });
    }
    //criptografia na senha
    const hashedPassword = await bcrypt.hash(senha, 10);
    //vai inserir os dados na tbela usuarios no banco de dados mossmann
    const query = `
      INSERT INTO usuarios (nome, email, senha)
      VALUES ($1, $2, $3)
    `;
    await pool.query(query, [nome, email, hashedPassword]);

    res.status(200).json({ sucesso: 'Cadastro realizado com sucesso!' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ erro: 'Erro ao cadastrar o usuário.' });
  }
});

//vai inicar o servidor
app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});

//autenticacao de login 
app.post('/login', async (req, res) => {
  const { email, senha } = req.body;

  if (!email || !senha) {
    return res.status(400).json({ erro: 'E-mail e senha são obrigatórios.' });
  }

  try {
    //veriicar o email autenticado
    const result = await pool.query('SELECT * FROM usuarios WHERE email = $1', [email]);
    if (result.rows.length === 0) {
      return res.status(400).json({ erro: 'Usuário não encontrado.' });
    }

    const user = result.rows[0];

    //comparando senha com a senha do banco criptografia
    const validPassword = await bcrypt.compare(senha, user.senha);
    if (!validPassword) {
      return res.status(400).json({ erro: 'Senha inválida.' });
    }

    //gernaod token jwt usuario 
    const token = jwt.sign({ id: user.id }, 'secreto', { expiresIn: '1h' });

    res.status(200).json({ mensagem: 'Login realizado com sucesso!', token });
  } catch (error) {
    console.error(error);
    res.status(500).json({ erro: 'Erro ao autenticar o usuário.' });
  }
});