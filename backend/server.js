const express = require("express");
const bcryptjs = require("bcryptjs");
const jwt = require("jsonwebtoken");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.json());


const SECRET_KEY = "seu_segredo";

const users = [{
    username: "admin",
    password: "$2a$10$Q.lXltnu1i7aWfM9x7QnzeQxTeDK8WqR6wmy5slZ2CW9ptlgIkAzy"// senha: "1234" criptografada
},
];

// Rota para login
app.post("/login", async (req, res) => {
    const { username, password } = req.body;

    const user = users.find((u) => u.username === username);

    if (!user) {
        return res.status(401).json({ error: "Usuário não encontrado " });
    }

    const isPasswordValid = await bcryptjs.compare(password, user.password);

    if (!isPasswordValid) {
        return res.status(401).json({ error: "Senha inválida " });
    }

    const token = jwt.sign({ username: user.username }, SECRET_KEY, { expiresIn: "1h" });

    return res.json({ token });
});

// Middleware para proteger rotas
const verifyToken = (req, res, next) => {
    const token = req.headers["authorization"];
    if (!token) return res.status(403).json({ error: "Token não fornecido " });

    jwt.verify(token, SECRET_KEY, (err, decoded) => {
        if (err) return res.status(403).json({ error: "Token inválido " });

        req.user = decoded;
        next();
    });
};

// Rota protegida 
app.get("/dashboard", verifyToken, (req, res) => {
    res.json({ message: `Bem-vindo ao dashboard, ${req.user.username}!`});
});

const PORT = 5000;
app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});

