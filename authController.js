// patients
router.post('/', async (req, res) => {
    const { patientId, doctorId, date } = req.body;
    const appointment = new Appointment({ patientId, doctorId, date });
    await appointment.save();
    res.status(201).send('Appointment booked');
});

router.get('/', async (req, res) => {
    const appointments = await Appointment.find().populate('patientId doctorId');
    res.send(appointments);
});

router.put('/:id', async (req, res) => {
    await Appointment.findByIdAndUpdate(req.params.id, req.body);
    res.send('Appointment updated');
});

router.delete('/:id', async (req, res) => {
    await Appointment.findByIdAndDelete(req.params.id);
    res.send('Appointment canceled');
});

// registration and login
router.post('/register', async (req, res) => {
    const { name, email, password } = req.body;
    const patient = new Patient({ name, email, password });
    await patient.save();
    res.status(201).send('Patient registered');
});

router.post('/login', async (req, res) => {
    const { email, password } = req.body;
    const patient = await Patient.findOne({ email });
    if (patient && await bcrypt.compare(password, patient.password)) {
        req.session.patientId = patient._id;
        res.send('Logged in');
    } else {
        res.status(401).send('Invalid credentials');
    }
});

router.get('/profile', async (req, res) => {
    if (!req.session.patientId) return res.status(401).send('Unauthorized');
    const patient = await Patient.findById(req.session.patientId);
    res.send(patient);
});

router.put('/profile', async (req, res) => {
    if (!req.session.patientId) return res.status(401).send('Unauthorized');
    await Patient.findByIdAndUpdate(req.session.patientId, req.body);
    res.send('Profile updated');
});

router.post('/logout', (req, res) => {
    req.session.destroy();
    res.send('Logged out');
});

module.exports = router;