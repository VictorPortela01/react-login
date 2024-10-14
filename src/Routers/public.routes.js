import React from "react";
import { BrowserRouter as Router, Route, Routes, Navigate } from "react-router-dom";
import Login from "../Components/Login/Login"; // Verifique o caminho correto para o arquivo Login.jsx
import Home from "../Components/Main/Home";   // Verifique o caminho correto para o arquivo Home.jsx
import Dashboard from "../Routers/Dashboard"; // Suponho que Dashboard já esteja pronto

// Definição de rota privada para proteger o Dashboard
const PrivateRoute = ({ element: Component, ...rest }) => {
  const token = localStorage.getItem("token");

  return token ? <Component {...rest} /> : <Navigate to="/login" />;
};

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/login" element={<Login />} />
        <Route path="/home" element={<Home />} /> {/* Rota para Home */}
        <Route
          path="/dashboard"
          element={
            <PrivateRoute element={<Dashboard />} />
          }
        />
        <Route path="/" element={<Navigate to="/home" />} /> {/* Redireciona para Home */}
      </Routes>
    </Router>
  );
}

export default App;
