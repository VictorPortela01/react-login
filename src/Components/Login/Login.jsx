import { FaUser, FaLock } from "react-icons/fa";
import { useState } from "react";
import { useAuth  } from "../../Contexts/AuthContext";
import "./Login.css";

const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const { login } = useAuth(); // Função de login do contexto

  const handleSubmit = async (event) => {
    event.preventDefault();

    try {
      const response = await fetch("http://localhost:5000/login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ username, password }),
      });

      const data = await response.json();

      if (response.ok) {
        login(data.token); // Armazena o token no contexto ou localStorage
        alert("Login bem-sucedido!");
      } else {
        alert(data.error);
      }
    } catch (error) {
      console.error("Erro durante o login:", error);
      alert("Ocorreu um erro, tente novamente mais tarde.")
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
        <div className="recall-forget">
          <label>
            <input type="checkbox" />
            Recordar dados
          </label>
        </div>
        <button type="submit">Enviar</button>
      </form>
    </div>
  );
};

export default Login;