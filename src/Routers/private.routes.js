import React from "react";
import { BrowserRouter as Router, Route, Redirect, Routes } from "react-router-dom";
import Home from "../Components/Home/Home";
import Dashboard from "../Routers/Dashboard";
import Login from "../Components/Login/Login" //Importe o Login

const PrivateRoute = ({ children }) => {
  const token = localStorage.getItem("token");

  return token ? children : <Navigate to="/home" />;
};

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/home" element={<Home />} />
        <Route
          path="/dashboard"
          element={
            <PrivateRoute>
              <Dashboard />
            </PrivateRoute>
          }
        />
      <Route path="/" element={<Navigate to="/home"/>} />
      </Routes>
    </Router>
  );
}

export default App