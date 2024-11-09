// app.js
const express = require("express");
const bodyParser = require("body-parser");
const authRoutes = require("./routes/authRoutes");
require("./config/db"); // Ensure database connection

const app = express();
app.use(bodyParser.json());

// Routes
app.use("/api/auth", authRoutes);


module.exports = app;
