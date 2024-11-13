import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './home.css';
import { useAuth } from "../../Contexts/AuthContext";

const DriverGoals = ({ driverId }) => {
  const [goals, setGoals] = useState(null);

  useEffect(() => {
    axios.post('http://localhost:5000/getDriverData', { driverId })
      .then(response => setGoals(response.data))
      .catch(error => console.error("Erro ao carregar dados:", error));
  }, [driverId]);

  if (!goals) return <p>Carregando...</p>;

  return (
    <div className="grid-container">
      <div className="grid-item">
        
        <p>RATING</p>
        <p>{goals.RATING}</p>
      </div>
      {/* Adicione os outros campos da mesma maneira */}
      <div className="grid-item">
        
        <p>TML</p>
        <p>{goals.TML}</p>
      </div>
      <div className="grid-item">
        
        <p>VALES</p>
        <p>{goals.VALES}</p>
      </div>
      {/* Continue adicionando os outros itens com base nos dados de `goals` */}
    </div>
  );
};

export const Home = () => {
  const { userData } = useAuth(); // Pega os dados do usuário autenticado

  if (!userData) {
    return <p>Carregando...</p>;
  }

  return (
    <div className="container1">
      <div className="sidebar">
        
        <p>COD - {userData.codigo}</p>
        <p>NOME - {userData.name}</p>
        <p>FUNÇÃO - Motorista</p>
      </div>
      <div className="main-content">
        <h1>METAS</h1>
        {/* Renderiza o componente DriverGoals passando o ID do motorista */}
        <DriverGoals driverId={userData.codigo} />
      </div>
    </div>
  );
};

export default Home;
