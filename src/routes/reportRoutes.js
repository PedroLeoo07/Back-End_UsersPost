const express = require("express");
const router = express.Router();
const reportController = require("../controllers/reportController");
const apiKeyMiddleware = require("../config/apiKey"); // Importando o middleware de chave de API    

router.use(apiKeyMiddleware); // Aplicando o middleware de chave de API a todas as rotas

//Rota para gerar o relatório em PDF
/**
 * @swagger
 * /api/report/pdf:
 *   get:
 *     summary: Gerar relatório em PDF
 *     tags: [Report]
 *     responses:
 *       200:
 *         description: Relatório gerado com sucesso
 *       500:
 *         description: Erro ao gerar o relatório
 */
router.get("/pdf", reportController.exportUserPDF);

module.exports = router;