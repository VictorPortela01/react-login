const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const cors = require("cors");
const mysql = require("mysql2");
require('dotenv').config();

const app = express();
app.use(cors());
app.use(express.json());

// Configuração do banco de dados
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port : process.env.DB_PORT || 3306,
});

// Conectar ao banco de dados
db.connect((err) => {
  if (err) throw err;
  console.log("Conectado ao banco de dados.");
});

const SECRET_KEY = process.env.JWT_SECRET; // Melhor usar uma variável de ambiente

// Rota para login
app.post("/login", (req, res) => {
  const { username, password } = req.body;

  // Verificar se o usuário existe no banco de dados
  const query = "SELECT * FROM users WHERE email = ?";
  db.query(query, [username], (err, result) => {
    if (err) throw err;

    if (result.length === 0) {
      return res.status(400).json({ message: "Usuário não encontrado" });
    }

    const user = result[0];

    // Verificar se a senha está correta
    bcrypt.compare(password, user.password, (err, isMatch) => {
      if (err) throw err;

      if (!isMatch) {
        return res.status(400).json({ message: "Senha incorreta" });
      }

      // Gerar token JWT
      const token = jwt.sign({ username: user.username }, SECRET_KEY, {
        expiresIn: "1h",
      });

      return res.json({ token, message: "Login bem-sucedido" });
    });
  });
});

// Middleware para proteger rotas
const verifyToken = (req, res, next) => {
  const token = req.headers["authorization"];
  if (!token) return res.status(403).json({ error: "Token não fornecido" });

  jwt.verify(token, SECRET_KEY, (err, decoded) => {
    if (err) return res.status(403).json({ error: "Token inválido" });

    req.user = decoded;
    next();
  });
};

// Rota protegida
app.get("/dashboard", verifyToken, (req, res) => {
  res.json({ message: `Bem-vindo ao dashboard, ${req.user.username}!` });
});

// Iniciar o servidor
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
