import React from 'react'
import { Link } from 'react-router-dom'
function Login() {
  return (
    <div className='login'>
        <form >
            <div className="heading">
                <h1>Login</h1>
            </div>
            <div>
                <label htmlFor="email">Enter Email</label>
                <input type="email" name="email" id="email" placeholder='Enter Email Address...'/>
            </div>

            <div>
                <label htmlFor="password">Enter Password</label>
                <input type="password" name="password" id="password" placeholder='Enter Password...'/>
            </div>

            <div>
            <input type="submit" value="Login" />
            </div>

            <div>
            <Link style={{textDecoration:"none", color:"#002550"}} to="/signup">I don't have an account!</Link>
            </div>

        </form>
    </div>
  )
}

export default Login