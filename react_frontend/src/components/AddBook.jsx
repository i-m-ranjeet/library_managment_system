import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { Navigate, useNavigate } from 'react-router-dom'
function AddBook() {
  const [cates, setCates] = useState([])
  const [subs, setSubs] = useState([])
  const [newbook,setNewbook] = useState({})
  const [msg,setMsg] = useState('')

  const [showbtn1,setShowbtn1] = useState({})
  const [showbtn2,setShowbtn2] = useState({})
  const [style,setStyle] = useState({right:"-50%"})

  const [getnewdata,setGetnewdata] = useState(true)
  
  const [addsub,setAddsub] = useState({})
  const [addcate,setAddcate] = useState({})

  const [newcate,setNewcate] = useState('')
  const [newsub,setNewsub] = useState('')

  axios.defaults.withCredentials = true;

  const navigate = useNavigate()

  const handleChange = (e)=>{
    setNewbook({...newbook,[e.target.name]:e.target.value})
  }
  const handleSubmit = (e)=>{
    e.preventDefault()
    axios.post('http://127.0.0.1:8000/library/add',newbook).then((res)=>{
      // console.log(res)
      if (res.data.msg){
        setMsg(res.data.msg)
        showmsg()
      }
    })
  }
  const showmsg = ()=>{
    
      setStyle({right:"50px"})

      setTimeout(()=>{
        
      setStyle({right:"-50%"})

      },4000)
    
  }
  const addCategory= ()=>{
    axios.post('http://127.0.0.1:8000/library/addcategory',{category_name:newcate}).then(res=>{
      if (res.data.msg){
        setMsg(res.data.msg)
        showmsg()
      }  
      
      setGetnewdata(!getnewdata)
      setShowbtn2({display:'block'})
      setAddcate({display:"none"})
    })
  }
  const addSubject= ()=>{
    axios.post('http://127.0.0.1:8000/library/addsubject',{subject_name:newsub}).then(res=>{
      if (res.data.msg){
        setMsg(res.data.msg)
        showmsg()
      }   
      setGetnewdata(!getnewdata)
      setShowbtn1({display:'block'})
      setAddsub({display:"none"})
    })
  }
  useEffect(()=>{
    axios.get('http://127.0.0.1:8000/admins/login').then(res=>{
      // console.log(res.data)
      if (!res.data.islogin){
        navigate('/login')
      }
    })
  },[])
  useEffect(() => {
    axios.get('http://127.0.0.1:8000/library/getsubjects').then(res => {
      // console.log(res.data)
      setSubs(res.data)
    })
    axios.get('http://127.0.0.1:8000/library/getcategories').then(res => {
      // console.log(res.data)
      setCates(res.data)
    })
  }, [getnewdata])
  return (
    <div className='addbook'>
      <div className='msg' style={style}>{msg}</div>
      <form >
        <div className="heading">
          <h1>Add New Book</h1>
        </div>

        <div className='inputcontainer'>
          <div>
            <label htmlFor="title">Enter Book Title</label>
            <input type="text" onChange={handleChange} name="title" id="title" placeholder='Enter Book Title...' />
          </div>
          <div>
            <label htmlFor="author">Enter Author Name</label>
            <input type="text" onChange={handleChange} name="author" id="author" placeholder='Enter Author Name...' />
          </div>
        </div>

        <div className='inputcontainer'>
        <div>
            <label htmlFor="subject">Choose Subject</label>
            <select name="subject" onChange={handleChange} id="subject">
              <option value="" selected>Choose a subject</option>
              {
                subs.map(ele => (
                  <option value={ele.id} key={ele.id}>{ele.subject_name}</option>
                ))
              }
            </select>
            <div className='extrainputs'>
              <span style={addsub} onClick={addSubject}>+</span>
              <p style={showbtn1} onClick={(e)=>{setAddsub({display:"block"});setShowbtn1({display:'none'})}}>Add New Subject</p>
              <input style={addsub} onChange={(e)=>{setNewsub(e.target.value)}} name="subject" type="text" />
            </div>
          </div>
          <div>
            <label htmlFor="category">Choose Category</label>
            <select name="category" onChange={handleChange} id="category">
              <option value="" selected>Choose a Category</option>
              {
                cates.map(ele => (
                  <option value={ele.id} key={ele.id}>{ele.category_name}</option>
                ))
              }
            </select>
            <div className='extrainputs'>
            <span style={addcate} onClick={addCategory}>+</span>
              <p style={showbtn2} onClick={(e)=>{setAddcate({display:"block"});setShowbtn2({display:'none'})}}>Add New Category</p>
              <input style={addcate} onChange={(e)=>{setNewcate(e.target.value)}} name="category" type="text" />
            </div>
            {/* <input type="number" name="category" id="category" placeholder='Enter category Number...'/> */}
          </div>
        </div>

        <div className="inputcontainer">
          
          <div>
            <label htmlFor="edition">Enter Edition</label>
            <input type="text" onChange={handleChange} name="edition" id="edition" placeholder='Enter Edition...' />
          </div>
          <div>
            <input type="submit" value="Add Book" onClick={handleSubmit} />
          </div>

        </div>



      </form>
    </div>
  )
}

export default AddBook