const express = require("express");
const router = express.Router();
const userConroller = require("../controllers/userController");
const upload = require("../config/upload.js"); // importe a upload.js


/**
 * @swagger
 * tags:
 *   name: Users
 *  description: Gerenciamento de usuários
 */

/**
 * @swagger
 * /api/users:
 *    get:
 *    summary: Listar todos os usuários
 *    tags: [Users]
 *    parameters:
 *    - in: query
 *    name: name
 *     schema:
 *     type: string
 *      description: Filtro por nome
 *      response:
 *      200:
 *      description: Lista de usuários
 */
router.get("/", userConroller.getAllUsers);

/**
 * @swagger
 * /api/users/{id}:
 *   get:
 *     summary: Buscar user por ID
 *     tags: [users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: User não encontrado
 *       404:
 *         description: User não encontrado
 */
router.get("/:id", userConroller.getUser);

/**
 * @swagger
 * /api/users:
 *    post:
 *     summary: Criar um novo usuário
 *      tags: [Users]
 *      requestBody:
 *      required: true
 *      content:
 *      multipart/form-data:
 *      schema:
 *     type: object
 *    properties:
 *      name:
 *     type: string
 *    user_id:
 *    type: string
 *   photo: 
 *   type: string
 *  format: binary
 *  responses:
 *    201:
 *    description: Usuário criado com sucesso
 */
router.post("/", upload.single("photo"), userConroller.createUser);
/** 
* @swagger
* /api/uaers/{id}:
*   put:
*     summary: Atualiza um user
*     tags: [Users]
*     parameters:
*       - in: path
*         name: id
*         required: true
*         schema:
*           type: integer
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             type: object
*             properties:
*               name:
*                 type: string
*               house_id:
*                 type: integer
*     responses:
*       200:
*         description: User atualizado
*/

router.put("/:id", userConroller.updateUser);



/**
 * @swagger
 * /api/users/{id}:
 *   delete:
 *     summary: Deleta um User
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: User deletado com sucesso
 *       404:
 *        description: User não encontrado
 */
router.delete("/:id", userConroller.deleteUser);

module.exports = router;