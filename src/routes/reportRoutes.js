const express = require("express");
const router = express.Router();

const reportController = require("../controllers/reportController");

router.get("/pdf", reportController.exportUserPDF);

module.exports = router;