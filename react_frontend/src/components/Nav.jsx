import axios from 'axios';
import React, { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import logo from './logo.png'

function Nav(props) {
  

  
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
            {props.islogin?<a href="" onClick={(e)=>{e.preventDefault();axios.get('http://127.0.0.1:8000/admins/logout');props.setislogin(false);}} style={{textDecoration:"none"}}><span style={{background: "rgb(0,37,80)",color:"rgb(249,198,35)"}} className='logout'>Logout</span></a>:<><Link style={{textDecoration: "none", color:"#002550"}} to="login"><span>Login</span></Link>
            <Link style={{textDecoration: "none", color:"#002550"}} to="signup"><span>Register</span></Link></>}
        </div>
    </nav>
  )
}

export default Nav