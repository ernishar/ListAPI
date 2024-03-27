const { Sequelize, QueryTypes } = require('sequelize');

const sequelize = new Sequelize('employees', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
  pool: { max: 5, min: 0, idle: 10000 }
});

const  dbConnection = async()=> {
  try {
    await sequelize.authenticate();
    console.log('DB connected');
  } catch (error) {
    console.error('Unable to connect to the database:', error);
    throw error; 
  }
}

const createTable= async ()=> {
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

    console.log('Table created successfully');
  } catch (error) {
    console.error('Error:', error);
  } finally {
    await sequelize.close(); 
  }
}

const insertData= async ()=> {
  try {
      await sequelize.query(`
      INSERT INTO Trainee (firstName, lastName, email, age)
      VALUES 
        ('Nishar', 'Alam', 'nishar@gmail.com', 21),
        ('Pankaj', 'Thakur', 'pamkaj@gmail.com', 21)
        ('Hinal', 'satodiya', 'hinal@gmail.com', 21)
        ('Rahul', 'Thakur', 'rahul@gmail.com', 21)
        ('Raees', 'Khan', 'raees@gmail.com', 21)
        ('Salar', 'ahmed', 'salar@gmail.com', 21)
        ('Orhan', 'Ali', 'orhan@gmail.com', 21)
        ('Mahmed', 'Ali', 'mahmed@gmail.com', 21)
        ('Konoor', 'Gazi', 'konoor@gmail.com', 21)

    `);

    console.log('Data inserted successfully');
  } catch (error) {
    console.error('Error:', error);
  } finally {
    await sequelize.close(); 
  }
}

const fetchData = async () => {
  try {
      const empData = await sequelize.query('SELECT * FROM `employees`', { type: QueryTypes.SELECT });
      return empData;

  } catch (error) {
      console.error('Error:', error);
  } finally {
      await sequelize.close();
  }
}

 
const updateData= async ()=> {
  try {
      await sequelize.query(`UPDATE Trainee 
      SET email = "nalam.netclues@gmail.com"
      WHERE id = 1`);

    console.log('Data update successfully');
  } catch (error) {
    console.error('Error:', error);
  } finally {
    await sequelize.close(); 
  }
}




module.exports = { createTable, fetchData, dbConnection, insertData, updateData  };
