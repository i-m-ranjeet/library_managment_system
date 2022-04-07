import './App.css';
import Home from './components/Home';
import Login from './components/Login';
import Signup from './components/Signup';
import Nav from './components/Nav';
import AddBook from './components/AddBook';
import UpdateBook from './components/UpdateBook';
import {
  Routes, route, Route
} from 'react-router-dom'


function App() {
  return (
    <div className="App">
      <Nav/>
      <Routes>
        <Route exact path="/" element={<Home/>} />
        <Route exact path="login" element={<Login/>} />
        <Route exact path="signup" element={<Signup/>} />
        <Route exact path="addbook" element={<AddBook/>} />
        <Route exact path="updatebook/:id" element={<UpdateBook/>} />

      </Routes>
    </div>
  );
}

export default App;
