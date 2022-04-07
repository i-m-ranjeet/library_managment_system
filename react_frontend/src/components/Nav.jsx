import React from 'react'
import { Link } from 'react-router-dom'
import logo from './logo.png'
function Nav() {
  return (
    <nav>
        <div className="logo">
            <img src={logo} alt="logo" />
        </div>

        <ul>
        <Link style={{textDecoration: "none", color:"#002550"}} to="/"><li>Home</li></Link>
        <Link style={{textDecoration: "none", color:"#002550"}} to="addbook"><li>Add Book</li></Link>
        </ul>

        <div className="loginreg">
            <Link style={{textDecoration: "none", color:"#002550"}} to="login"><span>Login</span></Link>
            <Link style={{textDecoration: "none", color:"#002550"}} to="signup"><span>Register</span></Link>
        </div>
    </nav>
  )
}

export default Nav