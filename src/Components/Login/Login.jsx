import { FaUser, FaLock } from "react-icons/fa";
import { useState } from "react";


import "./Login.css";

const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  const handleSubmit = (event) => {
    event.preventDefault();

    /*Essa parte está dando erro por conta do 'success' não está vinculado a nada ainda. */
    if (success) {
      alert("Login bem-sucedido!");
    } else {
      alert("Falha no login, verifique suas credenciais.");
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
        <button type="submit">Login</button>
      </form>
    </div>
  );
};

export default Login;