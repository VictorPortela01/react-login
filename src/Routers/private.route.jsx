import React from "react";
import { BrowserRouter as Router, Route, Redirect, Switch } from "react-router-dom";
import { useAuth } from "../Contexts/AuthContext";
import Login from "../Components/Login/Login";
import Dashboard from "../Routers/Dashboard";

const PrivateRoute = ({component: Component, ...rest}) => {
    const token = localStorage.getItem("token");

    return (
        <Route 
        {...rest}
        render={(props) => 
            token ? <Component {...props} /> : <Redirect to="/login"/>
        }
        />   
    );
};

    function App() {
        return (
            <Router>
              <Switch>
                <Route path="/login" component={Login} />
                <PrivateRoute path="/dashboard" component={Dashboard} />
                <Redirect from="/" to="/login" />
              </Switch>
            </Router>
          );
        }
        
export default App