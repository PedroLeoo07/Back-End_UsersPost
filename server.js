require("dotenv").config();
const express = require("express");
const cors = require("cors");
const usersRoutes = require("./src/routes/usersRoutes");
const postsRoutes = require("./src/routes/postsRoutes");
const reportRoutes = require("./src/routes/reportRoutes");
const setupSwagger = require("./src/config/swagger");
const path = require("path");

const app = express();
app.use(cors());
app.use(express.json());

app.use("/users", usersRoutes);
app.use("/posts", postsRoutes);
app.use("/api", reportRoutes);
setupSwagger(app);
app.use("/uploads", express.static(path.join(__dirname, "uploads")));


const PORT = process.env.PORT || 2310;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});
