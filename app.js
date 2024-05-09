const express = require('express');
const app = express();
const port = 3000; // Set your desired port number

// Middlewares
app.use(express.json());

// Routes
const uploadRoute = require('./routes/upload.js');
app.use('/upload', uploadRoute);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});