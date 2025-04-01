const express = require("express");
const router = express.Router();
const userConroller = require("../controllers/userController");

router.get("/", userConroller.getAllUsers);
router.get("/:id", userConroller.getUser);
router.post("/", userConroller.createUser);
router.put("/:id", userConroller.updateUser);
router.delete("/:id", userConroller.deleteUser);

module.exports = router;