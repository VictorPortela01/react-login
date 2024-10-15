
import './App.css'
import Login from './Components/Login/Login';
import { AuthProvider } from './Contexts/AuthContext.jsx'
import { Outlet } from 'react-router-dom';

function App() {
  return (
    <div className="App">
      <AuthProvider>
        <Login />
        <Outlet/>
      </AuthProvider>
    </div> 
  );
}

export default App
