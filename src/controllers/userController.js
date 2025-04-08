const userModel = require("../models/userModel");

const getAllUsers = async (req, res) => {
    try {
        const {name} = req.query;
        const users = await userModel.getUsers(name);
        res.json({ message: "Users obtidos com sucesso.", users });
    }
    catch (error) {
        res.status(500).json({ message: "Erro ao buscar users." });
    }
};

const getUser = async (req, res) => {
    try {
        if (!user) {
            return res.status(404).json({ message: "User não encontrado." });
        }
        res.json({ message: "User obtido com sucesso.", user });
    }
    catch (error) {
        res.status(500).json({ message: "Erro ao buscar user." });
    }
};

const createUser = async (req, res) => {
    try {
        const { name, email, password } = req.body;
        const newUser = await userModel.createUser(name, email, password);
        res.status(201).json({ message: "User criado com sucesso.", newUser });
    }
    catch (error) {
        res.status(500).json({ message: "Erro ao criar user." });
    }
};

const updateUser = async (req, res) => {
    try {
        const { id, name, email, password } = req.body;
        const updatedUser = await userModel.updateUser(id, name, email, password);
        res.status(200).json({ message: "User atualizado com sucesso.", updatedUser });
    }
    catch (error) {
        res.status(500).json({ message: "Erro ao atualizar user." });
    }
};

const deleteUser = async (req, res) => {
    try {
        const { id } = req.params;
        const deletedUser = await userModel.deleteUser(id);
        res.status(200).json({ message: "User excluído com sucesso.", deletedUser });
    }
    catch (error) {
        res.status(500).json({ message: "Erro ao excluir user." });
    }
};
module.exports = {
    getAllUsers,
    getUser,
    createUser,
    updateUser,
    deleteUser
};