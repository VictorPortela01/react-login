const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const cors = require("cors");
const User = require("./models/User"); // Importação do modelo User definido com Sequelize

require('dotenv').config();

const app = express()
app.use(cors({
  origin: true,
  method: ["GET", "POST", "PUT", "DELETE"],
  credentials: true
}))
app.use(express.json())

const SECRET_KEY = "seu_segredo"; // Melhor utilizar uma variável de ambiente

// Rota GET para buscar todos os usuários
app.get('/users', async (req, res) => {
  try {
    const users = await User.findAll(); // Busca todos os registros na tabela "users"
    res.json(users);  // Retorna os dados em formato JSON
  } catch (error) {
    console.error('Erro ao buscar usuários:', error);
    res.status(500).send('Erro ao buscar usuários');
  }
});


// Rota para login
app.post("/login", async (req, res) => {
  console.log(req.body)
  const { username, password } = req.body;

  try {
    // Verificar se o usuário existe no banco de dados pelo CPF
    const user = await User.findOne({ where: { cpf: username } });

    if (!user) {
      return res.status(400).json({ message: "Usuário não encontrado" });
    }

    // Gerar token JWT
    const token = jwt.sign({ username: user.username }, SECRET_KEY, { expiresIn: "1h" });

     // Inclua as informações do usuário na resposta
     return res.json({
      token,
      user: {
        id: user.id,
        cpf: user.cpf,
        name: user.name,
        codigo: user.codigo,
      },
      message: "Login bem-sucedido",
    });

    return res.json({ token, message: "Login bem-sucedido" });
  } catch (error) {
    console.error("Erro durante o login:", error);
    return res.status(500).json({ message: "Erro no servidor" });
  }
});

// Middleware para proteger rotas
const verifyToken = (req, res, next) => {
  const token = req.headers["authorization"];
  if (!token) return res.status(403).json({ error: "Token não fornecido" });

  jwt.verify(token, SECRET_KEY, (err, decoded) => {
    if (err) {
      return res.status(403).json({ error: "Token inválido" });
    }

    req.user = decoded;
    next();
  });
};

// Rota protegida
app.get("/dashboard", verifyToken, (req, res) => {
  res.json({ message: `Bem-vindo ao dashboard, ${req.user.username}!` });
});

// Iniciar o servidor
app.listen(5000, () => {
  console.log(`Servidor rodando na porta 5000`);
});
