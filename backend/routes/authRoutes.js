
const express = require("express");
const { login } = require("../controllers/authController");
const { register } = require("../controllers/authController");
const { checkemailexist } = require("../controllers/authController");
const {updateprofile}=require("../controllers/authController");
const {fetchprofile}=require("../controllers/authController");




const router = express.Router();

router.post("/login", login);
router.post("/register", register);
router.post("/checkemailexist", checkemailexist);
router.post("/update-profile", updateprofile);
router.post("/fetch-profile", fetchprofile);






module.exports = router;
