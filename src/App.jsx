
import './App.css'
import Login from './Components/Login/Login';
import { AuthProvider } from './Contexts/AuthContext.jsx'

function App() {
  return (
    <div className="App">
      <AuthProvider>
        <Login />
      </AuthProvider>
    </div> 
  );
}

export default App
