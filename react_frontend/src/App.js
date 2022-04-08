import './App.css';
import { useEffect,useState } from 'react';
import Home from './components/Home';
import Login from './components/Login';
import Signup from './components/Signup';
import Nav from './components/Nav';
import AddBook from './components/AddBook';
import UpdateBook from './components/UpdateBook';
import axios from 'axios';
import {
  Routes, route, Route
} from 'react-router-dom'


function App() {
  const [islogin, setislogin] = useState(false)
  axios.defaults.withCredentials = true;

  useEffect(()=>{
    axios.get('http://127.0.0.1:8000/admins/login').then(res=>{

        setislogin(res.data.islogin)
        
    })
  },[])
  return (
    <div className="App">
      <Nav islogin={islogin} setislogin={setislogin} />
      <Routes>
        <Route exact path="/" element={<Home/>} />
        <Route exact path="login" element={<Login setislogin={setislogin} />} />
        <Route exact path="signup" element={<Signup/>} />
        <Route exact path="addbook" element={<AddBook/>} />
        <Route exact path="updatebook/:id" element={<UpdateBook/>} />

      </Routes>
    </div>
  );
}

export default App;
