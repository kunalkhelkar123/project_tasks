// // server/controllers/userController.js
// const db = require("../config/dbConfig");

// const getProfile = async (req, res) => {
//   const userId = req.user.id;

//   try {
//     const [rows] = await db.execute("SELECT * FROM users WHERE id = ?", [userId]);
//     res.json(rows[0]);
//   } catch (error) {
//     res.status(500).json({ message: "Error fetching profile", error });
//   }
// };

// const updateProfile = async (req, res) => {
//   const userId = req.user.id;
//   const { name, email } = req.body;

//   try {
//     await db.execute("UPDATE users SET name = ?, email = ? WHERE id = ?", [name, email, userId]);
//     res.json({ message: "Profile updated successfully" });
//   } catch (error) {
//     res.status(500).json({ message: "Error updating profile", error });
//   }
// };

// module.exports = { getProfile, updateProfile };
