import React, { useEffect, useState } from 'react';
import axios from 'axios'
import './home.css';
import { useAuth } from "../../Contexts/AuthContext";



export const Home = () => {
  const { userData } = useAuth(); // Pega os dados do usuário autenticado
  const {userGoals, setUseGoals} = useState(null)
  
  useEffect(() => {
    if(userData) {
      axios.get('http://localhost:5000/user?userId=${userData.codigo}')
      .then(response => setUserGoals(response.data))
      .catch(error => console.error("Erro ao carregar dados do usuário:",error))
    }
  }, [userData])
  if (!userData) {
    return <p>Carregando dados do usuário...</p>;
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
                <p>RATING</p> 
              
                </div>
              <div className="grid-item">
              
                <p>DEVOLUÇÃO</p>
              </div>
              <div className="grid-item">
              
                <p>VALES</p>
              </div>
              <div className="grid-item">
              
                <p>AVARIAS</p>
              </div>
              <div className="grid-item">
              
                <p>TML</p>
              </div>
              <div className="grid-item">
              
                <p>VALORCX</p>
              </div>
              <div className="grid-item">
              
                <p>TENDÊNCIA MÊS</p>
              </div>
              <div className="grid-item">
              
                <p>INCENTIVO</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }

export default Home;
