const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const cors = require("cors");
const db = require("./models/db")
const User = require("./models/User")
require('dotenv').config();

const app = express();
app.use(cors());
app.use(express.json());

const SECRET_KEY = "seu_segredo"; // Melhor usar uma variável de ambiente

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

app.get("/login", async(req, res) => {
  res.send("Página de teste")
})

app.post("/cadastrar", async (req, res) => {
  res.send("Página cadastrar")
})

// Iniciar o servidor
app.listen(5000, () => {
  console.log(`Servidor rodando na porta 5000`);
});

