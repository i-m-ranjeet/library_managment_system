The Library Management System using Django Rest Framework as Backend and React Js as Frontend. <br/><br/>

<h3>Register:</h3> The Admin has to register himself with the required fields.<br/>
<h3>Login:</h3> After Registration the Admin can login to the system with his credentials.<br/>
If Admin is already registered then he will be able to login Directly. <br/>
Once Admin is login into the system<br/>
He can Add, Update, Retrieve and Delete books.<br/>
If Admin is not logged in, he will not have the access to perform these operations.<br/>
Admin can also logout himself from the system.<br/>
Students are able to see the books available in the library at the Home page.<br/>
<br/>
<h3>Installation Instructions:</h3><br/>
After cloning the repository<br/>
      <h3>For Database:</h3><br/>
Start the Apache and mySQL server using Xampp Control Panel<br/>
Go to http://localhost:8080/phpmyadmin/ in your browser<br/>
Create a database name as “library”<br/>
Import sql file “library.sql” from root Directory of Project in “DB” folder<br/>

<h3>For Backend:</h3><br/>
</h3>	Install the requirements:</h3> <br/>
#> <i>pip install -r requirements.txt</i><br/>
	Start backend server by using command: 
#> python manage.py runserver 8000
Note: this is mandatory to start the server on the port :8000
And the address should be https://127.0.0.1:8000



<h3>For Frontend:	</h3>
Use commands <br/>
<i>npm install</i>
<i>npm start</i>
Note: this is mandatory to start the server on the port :3000<br/>
And in browser, insted of http://localhost:3000 you have to use http://127.0.0.1:3000<br/>
Otherwise you will not be able to login in the system.<br/>

