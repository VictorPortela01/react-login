const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const cors = require("cors");
const User = require("./models/User"); // Importação do modelo User definido com Sequelize

require('dotenv').config();

const app = express()
app.use(cors({
  origin:true,
  method: ["GET", "POST", "PUT", "DELETE"],
  credentials: true
}))
app.use(express.json())

const SECRET_KEY = "seu_segredo"; // Melhor utilizar uma variável de ambiente

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
       
    // Verificar se a senha está correta
    const isMatch = await bcrypt.compare(password, user.senha);
    if (!isMatch) {
      return res.status(400).json({ message: "Senha incorreta" });
    }

    // Gerar token JWT
    const token = jwt.sign({ username: user.username }, SECRET_KEY, { expiresIn: "1h" });
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
