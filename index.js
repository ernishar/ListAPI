const express = require('express');
const app = express();
const port = 3000;
require('./model');
const {createTable, fetchData, dbConnection, insertData, updateData } = require('./model/index');

app.get('/', async (req, res) => {
  try {
    // const addData = await createTableAndInsertData();
    // console.log(addData);
    const data = await fetchData()
    res.json(data)
  } catch (error) {
    console.error('Error fetching data:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});