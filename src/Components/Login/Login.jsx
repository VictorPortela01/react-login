import {FaUser, FaLock} from "react-icons/fa";

import { useState } from "react";

import "./Login.css";

const Login = () => {
   // Estados para armazenar as entradas do usuário
  const [username, setUsername] = useState("");
  const [password, setPassoword] = useState("");

// Função que é chamada quando o formulário é enviado
  const handleSubmit = (event) => {
    // Impede que a página seja recarregada
    event.preventDefault();

     // Faz o console log das credenciais do usuário
    alert("Enviando os dados: "+ username + " - " + password)
  };

  return (
    <div className="container">
        <form onSubmit={handleSubmit}>
            <h1>Acesse o sistema</h1>
            <div className="input-field">
                <input type="text" placeholder="Código" required value={username} 
                onChange={(e) => setUsername(e.target.value)}/>
                <FaUser className="icon"/>
            </div>
            <div className="input-field">
                <input type="password"  placeholder="Senha" required value={password}
                 onChange={(e) => setPassoword(e.target.value)}/>
                <FaLock className="icon"/>
            </div>
            <div className="recall-forget">
              <label>
                <input type="checkbox"/>
                Lembre de mim
              </label>
            </div>
            <button type="submit">Login</button>

        </form>
    </div>
  );
}

export default Login