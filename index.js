// server.js
const express = require('express');
const mongoose = require('mongoose');
const session = require('express-session');

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(session({
    secret: 'your_secret_key',
    resave: false,
    saveUninitialized: true,
}));

mongoose.connect('mongodb://localhost:27017/telemedicine', { useNewUrlParser: true, useUnifiedTopology: true });

app.use('/patients', require('./routes/patients'));
app.use('/doctors', require('./routes/doctors'));
app.use('/appointments', require('./routes/appointments'));
app.use('/admin', require('./routes/admin'));

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});
