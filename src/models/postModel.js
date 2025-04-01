const pool = require("../config/database");

const getPostById = async (id) => {
    const result = await pool.query(
        `SELECT posts.id, posts.name, posts.descricao, posts.user_id, users.name as user_name, users.email as user_email
         FROM posts 
         LEFT JOIN users ON posts.user_id = users.id 
         WHERE posts.id = $1`, [id]
    );
    return result.rows[0];
};

const getPosts = async () => {
    const result = await pool.query("SELECT * FROM posts");
    return result.rows;
};

const createPost = async (name, descricao, user_id) => {
    const result = await pool.query(
        "INSERT INTO posts (name, descricao, user_id) VALUES ($1, $2, $3) RETURNING *",
        [name, descricao, user_id]
    );
    return result.rows[0];
};

const updatePost = async (id, name, descricao, user_id) => {
    const result = await pool.query(
        "UPDATE posts SET name = $1, descricao = $2, user_id = $3 WHERE id = $4 RETURNING *",
        [name, descricao, user_id, id]
    );
    return result.rows[0];
};

const deletePost = async (id) => {
    const result = await pool.query("DELETE FROM posts WHERE id = $1 RETURNING *", [id]);
    return result.rows[0];
};

module.exports = { getPostById, getPosts, createPost, updatePost, deletePost };



