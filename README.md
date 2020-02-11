# solasta_backend
This project was created for backend for editing mysql database for solasta_2k20 website for IIITDM Kurnool

Used Express application generator, nodemon, Express Admin

# Express application generator

Install Express Generator from this site -> https://expressjs.com/en/starter/generator.html

Or

follow below steps:

    C:\>npx express-generator
    
    C:\>npm install -g express-generator
    
    C:\>express --view=pug solasta_backend
    
    C:\>cd solasta_backend
    
    C:\solasta_backend>npm install
    
    C:\solasta_backend>set DEBUG=solasta_backend:* np start
    
# Express Admin

Express Admin is a NodeJS tool for easy creation of user friendly administrative interface for MySQL, MariaDB, SQLite and PostgreSQL databases.

Install Express Admin form this link -> https://simov.github.io/express-admin/

   Or

follow below steps:
    
    C:\>cd solasta_backend
    C:\solasta_backend>npm install express-admin
    
To create a project:

    C:\solasta_backend>mkdir projectadmin
    C:\solasta_backend>node node_modules/express-admin/app.js projectadmin/
    
    Database type: mysql

    Database name: [your_database_name]

    Database user: [user_name]

    Database password: [your_password] 

    Server port: 3000

    Admin user: [your_admin_name]

    Admin password: [your_admin_password]


### Start your app in browser:

    C:\solasta_backend>node node_modules/express-admin/app.js projectadmin/
    
Then load http://localhost:3000/ in your browser to access the app
