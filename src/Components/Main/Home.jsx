import React from 'react';
import './home.css';
import { useAuth } from "../../Contexts/AuthContext";


export const Home = () => {
  const { userData } = useAuth(); // Pega os dados do usuário autenticado

  if (!userData) {
    return <p>Carregando...</p>;
  }

  return (
      <div>
        <div className="container1">
          <div className="sidebar">
            <img
              alt="Profile picture"
              src="https://storage.googleapis.com/a1aa/image/ghQCOQV12KooD1DZxKxBk3CHmezjHwKWnT0xFBgrxW0p6jzJA.jpg"
            />
            <p>COD - {userData.codigo}</p>
            <p>NOME - {userData.name}</p>
            <p>FUNÇÃO - Motorista</p>
          </div>
          <div className="main-content">
            <h1>METAS</h1>
            <div className="grid-container">
              <div className="grid-item">
                <img
                  alt="Rating gauge"
                  src="https://storage.googleapis.com/a1aa/image/80d0lPHXZh4nD99jlnLgwTaM7bO0t1eJ2vkXnSIoWgGp6jzJA.jpg"
                />
                <p>RATING</p>
              </div>
              <div className="grid-item">
                <img
                  alt="Devolução gauge"
                  src="https://storage.googleapis.com/a1aa/image/cpeDbSJda7XNLKbgGbgUDKZRaj0wlq1vIpxnsdLjiduq6jzJA.jpg"
                />
                <p>DEVOLUÇÃO</p>
              </div>
              <div className="grid-item">
                <img
                  alt="Vales gauge"
                  src="https://storage.googleapis.com/a1aa/image/4G4U3CQ2emwehU9UxOeLy3fzITCX5nAd7OxjvDwC8jvyUf4cC.jpg"
                />
                <p>VALES</p>
              </div>
              <div className="grid-item">
                <img
                  alt="Avarias gauge"
                  src="https://storage.googleapis.com/a1aa/image/fSAzKp50ptSEIq1iUFLY6rUEpDRhum37sdZmp63acs9l6jzJA.jpg"
                />
                <p>AVARIAS</p>
              </div>
              <div className="grid-item">
                <img
                  alt="TML gauge"
                  src="https://storage.googleapis.com/a1aa/image/sSzcQXnWNr6JPNyILfgvQN4mjQcb5JExwSafrHNUxkmP1HnTA.jpg"
                />
                <p>TML</p>
              </div>
              <div className="grid-item">
                <img
                  alt="ValorCX gauge"
                  src="https://storage.googleapis.com/a1aa/image/qhQyWGsvBx5gHFCzJDFRuQYur5vf1rbehdHKmeEb2NFcqPOnA.jpg"
                />
                <p>VALORCX</p>
              </div>
              <div className="grid-item">
                <img
                  alt="Tendência Mês gauge"
                  src="https://storage.googleapis.com/a1aa/image/eAKMcE5v5L0mPyl4DR2gA16ulh72fqGgfvDllqDyWdJsqPOnA.jpg"
                />
                <p>TENDÊNCIA MÊS</p>
              </div>
              <div className="grid-item">
                <img
                  alt="Incentivo gauge"
                  src="https://storage.googleapis.com/a1aa/image/PqvfmUg3AGSBDSJ4wLMaDK20LvteCYFj1Q8HRiJGs3iQ1HnTA.jpg"
                />
                <p>INCENTIVO</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }

export default Home;
