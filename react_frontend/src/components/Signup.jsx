import React from 'react'
import { Link } from 'react-router-dom'
function Signup() {
    return (
        <div className='register'>
            <form >
                <div className="heading">
                    <h1>Register</h1>
                </div>

                <div className='inputcontainer'>
                    <div>
                        <label htmlFor="fname">Enter First Name</label>
                        <input type="text" name="fname" id="fname" placeholder='Enter First Name...'/>
                    </div>
                    <div>
                        <label htmlFor="lname">Enter Last Name</label>
                        <input type="text" name="lname" id="lname" placeholder='Enter Last Name...'/>
                    </div>
                </div>

                <div className='inputcontainer'>
                    <div>
                        <label htmlFor="email">Enter Email</label>
                        <input type="email" name="email" id="email" placeholder='Enter Email Address...'/>
                    </div>
                    <div>
                        <label htmlFor="mobile">Enter Mobile</label>
                        <input type="number" name="mobile" id="mobile" placeholder='Enter Mobile Number...'/>
                    </div>
                </div>

                <div className="inputcontainer">
                <div>
                    <label htmlFor="pass1">Enter Password</label>
                    <input type="password" name="password" id="pass1" placeholder='Create New Password...'/>
                </div>
                <div>
                    <label htmlFor="pass2">Confirm Password</label>
                    <input type="password" name="password" id="pass2" placeholder='Confirm Password...'/>
                </div>

                
                </div>

               <div className="inputcontainer">
               <div>
                    <input type="submit" value="Register" />
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