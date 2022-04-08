import axios from 'axios';
import React, { useEffect, useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
function Signup() {
    const [signupdata,setsignupdata] = useState({})
    
    const navigate = useNavigate()

    const getsignupdata = (e)=>{
        setsignupdata({...signupdata,[e.target.name]:e.target.value})
    }

    const signup = (e)=>{
        e.preventDefault()
        axios.post('http://127.0.0.1:8000/admins/signup',signupdata,).then(res=>{
            // console.log(res)
            if(res.data.isregister){
                navigate('/login')
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
        <div className='register'>
            <form >
                <div className="heading">
                    <h1>Register</h1>
                </div>

                <div className='inputcontainer'>
                    <div>
                        <label htmlFor="fname">Enter First Name</label>
                        <input onChange={getsignupdata} type="text" name="fname" id="fname" placeholder='Enter First Name...'/>
                    </div>
                    <div>
                        <label htmlFor="lname">Enter Last Name</label>
                        <input onChange={getsignupdata} type="text" name="lname" id="lname" placeholder='Enter Last Name...'/>
                    </div>
                </div>

                <div className='inputcontainer'>
                    <div>
                        <label htmlFor="email">Enter Email</label>
                        <input onChange={getsignupdata} type="email" name="email" id="email" placeholder='Enter Email Address...'/>
                    </div>
                    <div>
                        <label htmlFor="mobile">Enter Mobile</label>
                        <input onChange={getsignupdata} type="number" name="mobile" id="mobile" placeholder='Enter Mobile Number...'/>
                    </div>
                </div>

                <div className="inputcontainer">
                <div>
                    <label htmlFor="pass1">Enter Password</label>
                    <input onChange={getsignupdata} type="password" name="pass1" id="pass1" placeholder='Create New Password...'/>
                </div>
                <div>
                    <label htmlFor="pass2">Confirm Password</label>
                    <input onChange={getsignupdata} type="password" name="password" id="pass2" placeholder='Confirm Password...'/>
                </div>

                
                </div>

               <div className="inputcontainer">
               <div>
                    <input type="submit" onClick={signup} value="Register" />
                </div>
               <div>
                    <Link style={{  color: "#002550" }} to="/login">I already have an account!</Link>
                </div>
               
               
               </div>

            </form>
        </div>
    )
}

export default Signup