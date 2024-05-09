const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'fileupload',
  password: '261429',
  port: 5434, // PostgreSQL default port
});

module.exports = pool;