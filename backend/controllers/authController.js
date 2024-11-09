// server/controllers/authController.js
const db = require("../config/dbConfig");
const bcrypt = require("bcrypt");

const login = async (req, res) => {

  const { email, password, loginDate } = req.body;
  console.log("email ==> ", email);
  console.log("password ==> ", password);


  // if (!email || !password) {
  //   return res.status(400).json({ message: 'Please fill in all fields.' });
  // }

  // const sqlcheckuser = 'SELECT * FROM users WHERE email = ?';
  try {
    // const result = await db.execute('SELECT * FROM users WHERE email = ?', [email]);
    // const rows = result[0];  
    // console.log("Rows: ", rows);


    await db.execute('SELECT * FROM users WHERE email = ?', [email], async (error, results) => {
      const rows = results[0];
      console.log("Rows: ", rows);
      if (rows) {

        const storedPassword = rows.password;
        console.log("storedPassword", storedPassword)
        // console.log("User found:", user);
        const isPasswordCorrect = await bcrypt.compare(password, storedPassword);
        console.log("isPasswordCorrect", isPasswordCorrect);
        if (isPasswordCorrect) {
          const updateQuery = 'UPDATE users SET loginDate = ? WHERE email = ?';
          await db.execute(updateQuery, [loginDate, email]);
          console.log("Login successful and login date updated");
          return res.status(200).json({
            success: true,
            message: "User login successful",
            data: rows,
          });
        } else {
          console.log("Invalid credentials");
          return res.status(401).json({
            success: false,
            message: "Invalid credentials.",
          });
        }
      } else {
        console.log("No user found with this email.");
        return res.status(404).json({ success: false, message: 'User not found' });
      }
    });

    /////////////////////////////////////////

  } catch (error) {
    console.error("Error during login:", error);
    return res.status(500).json({ message: 'Internal server error.' });
  }
};



const register = async (req, res) => {
  console.log("Inside register");

  const { name, address, email, mobile, password, loginDate } = req.body;
  console.log("Login date:", loginDate);


  if (!name || !address || !email || !mobile || !password || !loginDate) {
    return res.status(400).json({ message: 'Please fill in all fields.' });
  }

  try {

    const result = await db.execute('SELECT * FROM users WHERE email = ?', [email]);
    console.log("DB Query Result:", result);  

    // Confirm that result[0] exists and is an array of rows
    const rows = result[0];
    if (Array.isArray(rows) && rows.length > 0) {
      return res.status(409).json({ message: 'User already exists.' });
    }


    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);


    const query = `INSERT INTO users (name, address, email, mobile, password, loginDate) VALUES (?, ?, ?, ?, ?, ?)`;
    const params = [name, address, email, mobile, hashedPassword, loginDate];

    await db.execute(query, params);

    return res.status(201).json({ message: 'User registered successfully.' });
  } catch (error) {
    console.error('Error during registration:', error);
    return res.status(500).json({ message: 'Internal server error.' });
  }
};

const checkemailexist = async (req, res) => {
  const { email } = req.body;
  console.log("email ==> ", req.body);
  if (!email) {
    return res.status(400).json({ message: 'email id required.' });
  }
  try {
    await db.execute('SELECT * FROM users WHERE email = ?', [email], async (error, results) => {

      if (results) {
        console.log("check email true ", results.length)
        res.status(200).json({
          success: true,
          data: results.length,
          message: "User fetch successfully",
        })

      } else if (error) {
        console.log("error chceck email exist  ", error)
        res.status(500).json({
          success: false,
          message: "error chceck email exist",
        })
      }
      else {
        console.warn('No user found with that ID', results);
        return res.status(404).json({ success: false, error: 'User not found' });
      }
    });
  } catch (error) {
    console.error('Error during check email exist :', error);
    return res.status(500).json({ message: 'Internal server error.' });
  }
};


const updateprofile = async (req, res) => {
  const { id, name, email, password } = req.body;
  console.log("inside updateprofile name ", name)
  console.log("inside updateprofile id ", id)

  console.log("inside updateprofile email ", email)
  console.log("inside updateprofile password ", password)

  const updateuser = `
  UPDATE users 
  SET name = ?, email = ?, password = ?
  WHERE id = ?
`;
  const salt = await bcrypt.genSalt(10);
  const hashedPassword = await bcrypt.hash(password, salt);
  await db.execute(updateuser, [name, email, hashedPassword, id]);

  return res.status(201).json({ message: 'User Profile update successfully.', success: true });

}

const fetchprofile = async (req, res) => {
  // const { id } = req.body;
  const  id  = 1;

  console.log("Received user ID:", id);

  const fetchuser = `
    SELECT * FROM users
    WHERE id = ?
  `;

  try {
    const result = await db.execute(fetchuser, [id]); 
    // console.log("Raw result from db.execute:", result); 

    if (result && result.length > 0 ) {
      const rows = result[0]; 
      console.log("Fetched user data:", rows[0]); 
      return res.status(200).json({
        message: 'User profile fetched successfully.',
        success: true,
        data: rows[0], 
      });
    } else {
      console.log("No rows found for the given user ID.");
      return res.status(404).json({
        message: 'User not found.',
        success: false,
      });
    }
  } catch (error) {
    console.error("Error executing query:", error);
    return res.status(500).json({
      message: 'Error fetching profile.',
      success: false,
      error: error.message,
    });
  }
};




module.exports = { login, register, checkemailexist, updateprofile, fetchprofile };
