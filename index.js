const express = require('express');
const app = express();
const port = 3001;

// Message from template parameter
const message = '{{ message }}';

app.get('/', (req, res) => {
  res.send(`<h1>Your message is:</h1><p>${message}</p>`);
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});