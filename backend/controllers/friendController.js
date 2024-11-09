// server/controllers/friendController.js
const db = require("../config/dbConfig");

const addFriend = async (req, res) => {
  const { friendId } = req.body;
  const userId = req.user.id;

  try {
    await db.execute("INSERT INTO friends (user_id, friend_id) VALUES (?, ?)", [userId, friendId]);
    res.json({ message: "Friend added successfully" });
  } catch (error) {
    res.status(500).json({ message: "Error adding friend", error });
  }
};

const getFriends = async (req, res) => {
  const userId = req.user.id;

  try {
    const [rows] = await db.execute("SELECT * FROM friends WHERE user_id = ?", [userId]);
    res.json(rows);
  } catch (error) {
    res.status(500).json({ message: "Error fetching friends", error });
  }
};

module.exports = { addFriend, getFriends };
