const express = require("express");
const jwt = require("jsonwebtoken");
const cors = require("cors");
const User = require("./models/User")
const Teste36 = require("./models/Teste36");

const app = express();

app.use(cors({
  origin: true,
  methods: ["GET", "POST", "PUT", "DELETE"],
}));

app.use(express.json());



const SECRET_KEY = "seu_segredo"; // Utilizando variável de ambiente

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

app.get('/teste', async (req, res) => {
  try {
    const teste36 = await Teste36.findAll()
    res.json(teste36)
  } catch (error) {
    console.error('Erro ')
  }
})

// Nova rota GET para buscar dados da tabela Teste36 por código
app.get('/teste/:codigo', async (req, res) => {
  const { codigo } = req.params;
  console.log("Código recebido no backend:", codigo); // Debug

  try {
    const registro = await Teste36.findOne({ where: { codigo } });

    if (!registro) {
      return res.status(404).json({ error: "Registro não encontrado para o código fornecido." });
    }

    res.json(registro);
  } catch (error) {
    console.error('Erro ao buscar registro por código:', error);
    res.status(500).json({ error: "Erro no servidor." });
  }
});

// Rota para login
app.post("/login", async (req, res) => {
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
        cpf: user.cpf,
        name: user.name,
        codigo: user.codigo
      },
      message: "Login bem-sucedido",
    });

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
