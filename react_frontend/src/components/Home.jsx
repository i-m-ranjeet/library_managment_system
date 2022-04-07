import axios from 'axios'
import React, { useEffect, useState } from 'react'
import update from './update.png'
import remove from './remove.png'
import { Link } from 'react-router-dom'


function Home() {
  const [books, setbooks] = useState([])
  const [callapi,setCallapi] = useState(true)
  const [willdelete,setWilldelete] = useState(null)
  const [modalclass,setmodalclass] = useState('confirmdelete')

  const handleDelete = (id)=>{
    setWilldelete(id)
    setmodalclass('confirmdelete active')
  }
  useEffect(() => {
    axios.get('http://127.0.0.1:8000/library/allbooks').then(res => {
      console.log(res)
      setbooks(res.data)
    })
  }, [callapi])
  return (
    <div className='books'>
      <div className={modalclass}>
        <div className="confirmcontainer">
          <h3>Do You Really Want to Remove This Book from library ?</h3>
          <div>
            <span className='no' onClick={()=>{ setmodalclass('confirmdelete');}}>No</span>
            <span className='yes' onClick={()=>{axios.delete(`http://127.0.0.1:8000/library/deletebook/${willdelete}`); setmodalclass('confirmdelete'); setCallapi(!callapi)}}>Yes</span>
          </div>
        </div>
      </div>
      {
        books.map((ele) => (
          <div className="book" key={ele.id}>
            <div className="title">{ele.title}</div>
            <div className="author"><span>Author :</span> {ele.author}</div>
            {/* <div className="author">Edition : {ele.edition}</div> */}
            <div className="subject"><span>Subject :</span> {ele.subject}</div>
            <div className="category"><span>Category :</span> {ele.category}</div>

            <div className='editdelete'>
              <Link to={`updatebook/${ele.id}`}><img src={update} alt="update" /></Link>
              <img src={remove} onClick={()=>{handleDelete(ele.id)}} alt="delete" />
            </div>

          </div>
        ))
      }
    </div>
  )
}

export default Home