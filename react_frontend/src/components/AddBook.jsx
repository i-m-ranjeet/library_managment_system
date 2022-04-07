import axios from 'axios'
import React, { useEffect, useState } from 'react'
function AddBook() {
  const [cates, setCates] = useState([])
  const [subs, setSubs] = useState([])
  const [newbook,setNewbook] = useState({})
  const [msg,setMsg] = useState('')
  const [style,setStyle] = useState({right:"-50%"})

  const handleChange = (e)=>{
    setNewbook({...newbook,[e.target.name]:e.target.value})
    console.log(newbook)
  }
  const handleSubmit = (e)=>{
    e.preventDefault()
    axios.post('http://127.0.0.1:8000/library/add',newbook).then((res)=>{
      console.log(res)
      if (res.data.msg){
        setMsg(res.data.msg)
        setStyle({right:"50px"})

        setTimeout(()=>{
          
        setStyle({right:"-50%"})

        },4000)
      }
    })
  }
  const handleNotification = ()=>{

  }
  useEffect(() => {
    axios.get('http://127.0.0.1:8000/library/getsubjects').then(res => {
      console.log(res.data)
      setSubs(res.data)
    })
    axios.get('http://127.0.0.1:8000/library/getcategories').then(res => {
      console.log(res.data)
      setCates(res.data)
    })
  }, [])
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
            <label htmlFor="edition">Enter Edition</label>
            <input type="text" onChange={handleChange} name="edition" id="edition" placeholder='Enter Edition...' />
          </div>
          <div>
            <label htmlFor="category">Choose Category</label>
            <select name="category" onChange={handleChange} id="category">
              <option value="" selected>Choose a Category</option>
              {
                subs.map(ele => (
                  <option value={ele.id}>{ele.subject_name}</option>
                ))
              }
            </select>
            {/* <input type="number" name="category" id="category" placeholder='Enter category Number...'/> */}
          </div>
        </div>

        <div className="inputcontainer">
          <div>
            <label htmlFor="subject">Choose Subject</label>
            <select name="subject" onChange={handleChange} id="subject">
              <option value="" selected>Choose a subject</option>
              {
                cates.map(ele => (
                  <option value={ele.id}>{ele.category_name}</option>
                ))
              }
            </select>
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