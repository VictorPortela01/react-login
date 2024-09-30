import {FaUser, FaLock} from "react-icons/fa";

import { useState } from "react";

import "./Login.css";

const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassoword] = useState("");

  const handleSubmit = (event) => {
    event.preventDefault();
    
    alert("Enviando os dados: "+ username + " - " + password)
  };

  return (
    <div className="container">
        <form onSubmit={handleSubmit}>
            <h1>Acesse o sistema</h1>
            <div className="input-field">
                <input type="text" placeholder="Código" onChange={(e) => setUsername(e.target.value)}/>
                <FaUser className="icon"/>
            </div>
            <div className="input-field">
                <input type="password"  placeholder="Senha" onChange={(e) => setPassoword(e.target.value)}/>
                <FaLock className="icon"/>
            </div>
            <div className="recall-forget">
              <label>
                <input type="checkbox"/>
                Lembre de mim
              </label>
            </div>
            <button>Entrar</button>

        </form>
    </div>
  );
}

export default Login