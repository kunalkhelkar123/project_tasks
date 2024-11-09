// server/controllers/notificationController.js
const db = require("../config/dbConfig");

const getNotifications = async (req, res) => {
  const userId = req.user.id;

  try {
    const [rows] = await db.execute("SELECT * FROM notifications WHERE user_id = ?", [userId]);
    res.json(rows);
  } catch (error) {
    res.status(500).json({ message: "Error fetching notifications", error });
  }
};

module.exports = { getNotifications };
