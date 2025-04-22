const express = require("express");
const router = express.Router();
const postController = require("../controllers/postController");
const apiKeyMiddleware = require("../config/apiKey"); // Importando o middleware de chave de API    

router.use(apiKeyMiddleware); // Aplicando o middleware de chave de API a todas as rotas

// Definindo as rotas para os posts
router.get("/", postController.getAllPosts);
router.get("/:id", postController.getPost);
router.post("/", postController.createPost);
router.put("/:id", postController.updatePost);
router.delete("/:id", postController.deletePost);

module.exports = router;