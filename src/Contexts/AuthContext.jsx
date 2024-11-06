// AuthContext.js
import React, { createContext, useContext, useState } from "react";

const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [token, setToken] = useState(null);
  const [userData, setUserData] = useState(null); // Armazena os dados do usuário

  const login = (token, user) => {
    setToken(token);
    setUserData(user); // Salva os dados do usuário
    localStorage.setItem("token", token);
    localStorage.setItem("userData", JSON.stringify(user)); // Salva os dados no localStorage
  };

  const logout = () => {
    setToken(null);
    setUserData(null);
    localStorage.removeItem("token");
    localStorage.removeItem("userData");
  };

  return (
    <AuthContext.Provider value={{ token, userData, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => useContext(AuthContext);
