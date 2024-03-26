const { Sequelize, QueryTypes } = require('sequelize');

const sequelize = new Sequelize('employees', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
  pool: { max: 5, min: 0, idle: 10000 }
});

async function fetchData() {
  try {
    await sequelize.authenticate();
    console.log('DB connected');

    const empData = await sequelize.query('SELECT * FROM `employees`', { type: QueryTypes.SELECT });
    return empData;
  } catch (error) {
    console.error('Unable to connect to the database:', error);
    throw error; // Rethrow the error to handle it appropriately where fetchData is called
  }
}

async function createTableAndInsertData() {
  try {
    await sequelize.query(`
      CREATE TABLE IF NOT EXISTS Trainee (
        id INT AUTO_INCREMENT PRIMARY KEY,
        firstName VARCHAR(255) NOT NULL,
        lastName VARCHAR(255) NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        age INT NOT NULL
      )
    `);

    await sequelize.query(`
      INSERT INTO Trainee (firstName, lastName, email, age)
      VALUES 
        ('Nishar', 'Alam', 'nishar@gmail.com', 21),
        ('Pankaj', 'Thakur', 'pamkaj@gmail.com', 21)
    `);

    console.log('Table created and data inserted successfully');
  } catch (error) {
    console.error('Error:', error);
  } finally {
    await sequelize.close(); 
  }
}

module.exports = { fetchData, createTableAndInsertData };
