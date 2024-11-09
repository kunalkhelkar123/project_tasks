
const express = require("express");
const cors = require("cors");
const multer = require("multer");
const authRoutes = require("./routes/authRoutes");
const friendRoutes = require("./routes/friendRoutes");
const notificationRoutes = require("./routes/notificationRoutes");

const app = express();
app.use(express.json());

// const storage = multer.diskStorage({
//   destination: (req, file, cb) => {
//     cb(null, 'uploads/');
//   },
//   filename: (req, file, cb) => {
//     cb(null, Date.now() + '-' + file.originalname); 
//   }
// });


app.use(cors());
app.use(express.urlencoded({ limit: '50mb', extended: true })); 

app.use("/api/validate", authRoutes);
app.use("/api/auth",  authRoutes); 
// app.use("/api/friends", friendRoutes);
// app.use("/api/notifications", notificationRoutes);


const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
