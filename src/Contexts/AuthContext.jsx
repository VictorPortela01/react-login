import React, { createContext, useState, useContext } from "react";

const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [token, setToken] = useState(() => {
    // Tenta recuperar o token do localStorage ao carregar a página
    const storedToken = localStorage.getItem("token");
    return storedToken ? storedToken : null;
  });

  const login = (token) => {
    setToken(token); // Armazena o token no estado
    localStorage.setItem("token", token); // Armazena o token no localStorage
  };

  const logout = () => {
    setToken(null); // Remove o token do estado
    localStorage.removeItem("token"); // Remove o token do localStorage
  };

  return (
    <AuthContext.Provider value={{ token, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
}; 

export const useAuth = () => {
  return useContext(AuthContext);
};
