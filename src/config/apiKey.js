require("dotenv").config();

const apiKeyMiddleware = (req, res, next) => {
    const clientKey = req.headers['x-api-key'];
    const serverKey = process.env.API_KEY;

    if (!clientKey) {
        return res.status(401).json({ error: 'Chave da API não fornecida corretamente.'});
    }

    if(!clientKey !== serverKey) {
        // Se a chave não for fornecida ou não corresponder à chave do servidor, retorne um erro 403
        return res.status(403).json({ error: 'Chave da API incorreta!! Sem autortização;'});
    }

    next(); //Se a chave estiver correta, continue para o próximo middleware ou rota
};

module.exports = apiKeyMiddleware;