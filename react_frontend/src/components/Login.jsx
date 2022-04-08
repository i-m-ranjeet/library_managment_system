import axios from 'axios';
import React, { useState,useEffect } from 'react'
import { Link, useNavigate } from 'react-router-dom'
function Login(props) {
    const [logindata,setlogindata] = useState({})
    const navigate = useNavigate()

    axios.defaults.withCredentials = true;
    const getlogindata = (e)=>{
        setlogindata({...logindata,[e.target.name]:e.target.value})
    }
    const login = (e)=>{
        e.preventDefault()
        axios.post('http://127.0.0.1:8000/admins/login',logindata,).then(res=>{
            // console.log(res)
            if(res.data.islogin){
                props.setislogin(res.data.islogin)
                navigate('/')
            }
        })
    }
    useEffect(() => {
        axios.get('http://127.0.0.1:8000/admins/login',).then(res=>{
            if(res.data.islogin){
                navigate('/')
            }
        })
    }, []);
  return (
    <div className='login'>
        <form >
            <div className="heading">
                <h1>Login</h1>
            </div>
            <div>
                <label htmlFor="email">Enter Email</label>
                <input onChange={getlogindata} type="email" name="email" id="email" placeholder='Enter Email Address...'/>
            </div>

            <div>
                <label htmlFor="password">Enter Password</label>
                <input onChange={getlogindata} type="password" name="password" id="password" placeholder='Enter Password...'/>
            </div>

            <div>
            <input type="submit" value="Login" onClick={login} />
            </div>

            <div>
            <Link style={{textDecoration:"none", color:"#002550"}} to="/signup">I don't have an account!</Link>
            </div>

        </form>
    </div>
  )
}

export default Login