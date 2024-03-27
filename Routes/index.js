const express = require('express');
const {createTable, fetchData, dbConnection, insertData, updateData } = require('../model/index');

const router = express.Router();
router
.get('/',fetchData)