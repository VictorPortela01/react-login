import React, { useEffect, useState } from 'react';
import axios from 'axios'
import './home.css';
import { useAuth } from "../../Contexts/AuthContext";


export const Home = () => {
  const { userData } = useAuth(); // Pega os dados do usuário autenticado
  const { logout } = useAuth();
  const [userGoals, setUserGoals] = useState({}); // Declaração correta do estado

  const handleLogout = () => {
    logout(); // Limpa os dados do usuário
    window.location.href = "/"; // Redireciona para a página inicial ou de login
  };

  useEffect(() => {
    if (userData) {
      axios
        .get(`http://localhost:5000/teste/${userData.name}`)
        .then((response) => {
          console.log("Resposta do backend:", response.data); // Debug
          setUserGoals(response.data);
        })
        .catch((error) => {
          console.error("Erro ao carregar dados do usuário:", error);
        });
    }
  }, [userData])

  if (!userData || userGoals === null) {
    return <p>Carregando dados do usuário...</p>;
  }

  if (Object.keys(userGoals).length === 0) {
    return <p>Nenhuma meta encontrada para o usuário.</p>;
  }

  // Condicional para verificar a função e renderizar caixas específicas
  const isMotorista = userData.função === 'MOTORISTA';
  const isAjudante = userData.função === 'AJUDANTE';

  return (
    <div>
      <div className="container1">
        <div className="sidebar">
          <p>COD - {userData.codigo}</p>
          <p>NOME - {userData.name}</p>
          <p>FUNÇÃO - {userData.função}</p>
          <button className="logout-button" onClick={handleLogout}>
            Sair da Conta
          </button>
          <div className="suggestion-box">
            <h4>Envie sua Sugestão</h4>
            <p>Número do TI</p>
            <p>(85) 8105-9651</p>
          </div>

        </div>
        <div className="main-content">
          <div className="static-table">
            <table>
              <thead>
                <tr>
                  <th>RATING</th>
                  <th>TML</th>
                  <th>DEVOLUÇÃO</th>
                  <th>VALES</th>
                  <th>CHECKLIST</th>
                  <th>BOLETO</th>
                  <th>COMBUSTIVEL</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>4.95</td>
                  <td>30:00</td>
                  <td>2,00%</td>
                  <td>2,00</td>
                  <td>90%</td>
                  <td>0</td>
                  <td>BATEU | NÃO BATEU</td>
                </tr>
              </tbody>
            </table>
          </div>
          <h1>METAS({userData.função})</h1>
          {/* Renderizar caixas específicas dependendo da função */}
          {isMotorista && (

            <div className="grid-container">
              {/* Caixa específica para motorista */}

              <div className="grid-item">
                <p>RATING</p>
                <p>{userGoals.rating || 'N/A'}</p>
              </div>
              <div className="grid-item">
                <p>DEVOLUÇÃO</p>
                <p>{userGoals.devolução || 'N/A'}</p>
              </div>
              <div className="grid-item">
                <p>CHECKLIST</p>
                <p>{userGoals.checklist || 'N/A'}</p>
              </div>
              <div className="grid-item">
                <p>COMBUSTÍVEL</p>
                <p>{userGoals.combustivel || 'N/A'}</p>
              </div>
              <div className="grid-item">
                <p>TML</p>
                <p>{userGoals.tml || 'N/A'}</p>
              </div>
              <div className="grid-item">
                <p>VALES</p>
                <p>{userGoals.vales || 'N/A'}</p>
              </div>
              <div className="grid-item">
                <p>BOLETO</p>
                <p>{userGoals.boleto || 'N/A'}</p>
              </div>
              <div className="grid-item">
                <p>TENDECIA</p>
                <p>{userGoals.tendencias}</p>
              </div>
            </div>
          )}

          {isAjudante && (
            <div className="grid-container">
              {/* Caixa específica para ajudante */}
              <div className="grid-item">
                <p>RATING</p>
                <p>{userGoals.rating || 'N/A'}</p>
              </div>
              <div className="grid-item">
                <p>DEVOLUÇÃO</p>
                <p>{userGoals.devolução || 'N/A'}</p>
              </div>

              <div className="grid-item">
                <p>TML</p>
                <p>{userGoals.tml || 'N/A'}</p>
              </div>
              <div className="grid-item">
                <p>VALES</p>
                <p>{userGoals.vales || 'N/A'}</p>
              </div>
              <div className="grid-item">
                <p>TENDECIA</p>
                <p>{userGoals.tendencias || "N/A"} </p>
              </div>
              <div className="grid-item">
                <p>AVARIAS</p>
                <p>{userGoals.avarias || "N/A"} </p>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

export default Home;
