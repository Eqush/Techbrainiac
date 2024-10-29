// import dependencies //
const express = require ("express")
const app = express()
const mysql = require('mysql2');
const dotenv = require('dotenv')

// configure environment variables
dotenv.config();

// create a connection object
const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME

})

// testing connection
db.connect((err) => {
    // if the connection is not successful
    if(err) {
        return console.log("Error connecting to the database:", err)
    }

    // if the connection is successful
    console.log("Successfully connected to MySQL: ", db.threadId)
})



// retrieve all patients
app.get('/patients', (req, res) => {
    const query = 'SELECT patient_id, first_name, last_name, date_of_birth FROM patients';
    db.query(query, (err, results) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json(results);
    })
})

// retrieve providers
aapp.get('/providers', (req, res) => {
    const query = 'SELECT first_name, last_name, provider_specialty FROM providers';
    db.query(query, (err, results) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json(results);
    })
})

// start and listen to the server
app.listen(3300, () => {
    console.log('server is running on port 3300..')
})

// Question 2 goes here
app.get('/providers/specialty',(req,res) => {
    const speciality = req.query.speciality;
    const sql = 'SELECT first_name, last_name, provider_speciality FROM providers WHERE provider_specialty = ?'

    db.query(sql, [speciality], (err,results) =>{
        if (err){
            return res.status(500).send("Failed to get providers", err)
        }
    })

    // Question 3 goes here
    app.get('/patients', (req, res) => {
        const firstName = req.query.firstName;
        const query = 'SELECT * FROM patients WHERE first_name = ?';
        
        db.query(query, [firstName], (err, results) => {
            if (err) {
                return res.status(500).json({ error: err.message });
            }
            res.json(results);


})

// Question 4 goes here
app.get('/providers/:specialty', (req, res) => {
    const specialty = req.params.specialty;
    const query = 'SELECT * FROM providers WHERE specialty = ?';

    db.query(query, [specialty], (err, results) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json(results);
    });
})