const postModel = require("../models/postModel");

const getAllPosts = async (req, res) => {
    try {
        const posts = await postModel.getPosts();
        res.json({ message: "Posts obtidos com sucesso.", posts });
    }
    catch (error) {
        res.status(500).json({ message: "Erro ao buscar posts." });
    }
};

const getPost = async (req, res) => {
    try {
        const post = await postModel.getPostById(req.params.id);
        if (!post) {
            return res.status(404).json({ message: "Post não encontrado." });
        }
        res.json({ message: "Post obtido com sucesso.", post });
    }
    catch (error) 
    { res.status(500).json({ message: "Erro ao buscar post." }); }
};

const createPost = async (req, res) => {
    try {
        const { name, descricao, user_id } = req.body;
        const newPost = await postModel.createPost(name, descricao, user_id);
        res.status(201).json({ message: "Post criado com sucesso.", newPost });
    }
    catch (error) {
        res.status(500).json({ message: "Erro ao criar post." });
    }   
};

const updatePost = async (req, res) => {
    try {
        const { id, name, descricao, user_id } = req.body;
        const updatedPost = await postModel.updatePost(id, name, descricao, user_id);
        res.status(200).json({ message: "Post atualizado com sucesso.", updatedPost });
    }   
    catch (error) {
        res.status(500).json({ message: "Erro ao atualizar post." });
    }
};

const deletePost = async (req, res) => {
    try {
        const { id } = req.params;
        const deletedPost = await postModel.deletePost(id);
        res.status(200).json({ message: "Post excluído com sucesso.", deletedPost });
    }   
    catch (error) {
        res.status(500).json({ message: "Erro ao excluir post." });
    }
};



module.exports = { getAllPosts, getPost, createPost, updatePost, deletePost };