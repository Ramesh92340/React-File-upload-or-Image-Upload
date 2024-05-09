const express = require('express');
const router = express.Router();
const multer = require('multer');
const pool = require('../db');

const storage = multer.diskStorage({
  destination: (req, file, callback) => {
    callback(null, 'uploads/'); // Set your desired upload directory
  },
  filename: (req, file, callback) => {
    callback(null, file.originalname);
  },
});

const upload = multer({ storage });


router.post('/', upload.single('file'), async (req, res) => {
  try {
    const { originalname, path } = req.file;
    const insertQuery = 'INSERT INTO files (name, path) VALUES ($1, $2)';
    const values = [originalname, path];

    await pool.query(insertQuery, values);

    res.status(200).json({ message: 'File uploaded successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Error uploading file' });
  }
});

module.exports = router;