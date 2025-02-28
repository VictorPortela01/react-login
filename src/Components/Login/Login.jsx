// Login.js
import { FaUser, FaLock } from "react-icons/fa";
import { useState } from "react";
import { useAuth } from "../../Contexts/AuthContext";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import "./Login.css";
import "../../App.css";

const Login = () => {
  const [cpf, setCpf] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const { login } = useAuth(); // Função de login do contexto
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();


    if (!cpf || !password) {
      setError("Por favor, preencha todos os campos.");
      return;
    }

    try {
      const response = await axios.post("https://backend-production-f621.up.railway.app/api/login", {
        cpf,
        password
      },
        {
          headers: { "Content-Type": "application/json" },
          withCredentials: true, // Necessário para autenticação baseada em cookies
        }
      );

      const { token, user } = response.data; // Recebe o token e os dados do usuário
      if (token) {
        login(token, user); // Armazena o token e os dados do usuário no contexto
        console.log("Login bem-sucedido! Redirecionando para /home...");
        navigate("/home"); // Redireciona para a página de destino
      }
    } catch (err) {
      console.error("Erro durante o login:", err);
      setError("Usuário ou senha inválidos. Tente novamente.");
    }
  };

  return (
    <div className="container">
      <form onSubmit={handleSubmit}>
        <h1>CERVEJARIA</h1>
        <h2>ambev</h2>
        <h1>DISSOBEL</h1>

        <div className="input-field">
          <input
            type="text"
            placeholder="CPF EX: 12345678901"
            required
            value={cpf}
            onChange={(e) => setCpf(e.target.value)}
          />
          <FaUser className="icon" />
        </div>

        <div className="input-field">
          <input
            type="password"
            placeholder="Senha"
            required
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />
          <FaLock className="icon" />
        </div>

        {error && <p className="error-message">{error}</p>}


        <button type="submit">Entrar</button>
      </form>
    </div>
  );
};

export default Login;
