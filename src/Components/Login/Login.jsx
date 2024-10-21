import { FaUser, FaLock } from "react-icons/fa";
import { useState } from "react";
import { useAuth } from "../../Contexts/AuthContext"; // Importação do contexto de autenticação
import axios from "axios";
import "./Login.css";
import "../../App.css"

const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const { login } = useAuth(); // Função de login do contexto

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError("");
    try {
      const response = await axios.post("http://localhost:5000", {
        username,
        password,
      });

      // Verifica se o login foi bem-sucedido
      const token = response.data.token;
      if (token) {
        // Armazena o token no localStorage
        localStorage.setItem("token", token);
        
        // Chama a função de login do contexto, passando o token
        login(token);

        alert("Login bem-sucedido!");
      }
    } catch (err) {
      console.error("Erro durante o login:", err);
      alert("Usuário ou senha inválidos. Tente novamente.");
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
            placeholder="Código"
            required
            value={username}
            onChange={(e) => setUsername(e.target.value)}
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

        <div className="recall-forget">
          <label>
            <input type="checkbox" />
            Lembrar dados
          </label>
        </div>

        <button type="submit">Entrar</button>
      </form>
    </div>
  );
};

export default Login;
