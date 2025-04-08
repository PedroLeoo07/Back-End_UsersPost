const pool = require("../config/database");

const getUserById = async (id) => {
    const result = await pool.query(
        `SELECT users.id, users.name, users.email, users.password
         FROM users 
         WHERE users.id = $1`, [id]
    );
    return result.rows[0];
};

const getUsers = async ( name) => {
    if(!name){
        const result = await pool.query(
            `SELECT users.id, users.name, users.email, users.password
             FROM users 
             WHERE users.id = $1`
        );
        return result.rows;
    } else{
        const result = await pool.query(
            `SELECT users.id, users.name, users.email, users.password
             FROM users 
            LEFT JOIN users ON users.id = $1`, [`%${name}%`]       
        );
        return result.rows;
    };
};

const createUser = async (name, email, password) => {
    const result = await pool.query(
        "INSERT INTO users (name, email, password) VALUES ($1, $2, $3) RETURNING *",
        [name, email, password]
    );
    return result.rows[0];
};

const updateUser = async (id, name, email, password) => {
    const result = await pool.query(
        "UPDATE users SET name = $1, email = $2, password = $3 WHERE id = $4 RETURNING *",
        [name, email, password, id]
    );
    return result.rows[0];
};

const deleteUser = async (id) => {
    const result = await pool.query("DELETE FROM users WHERE id = $1 RETURNING *", [id]);
    return result.rows[0];
};

module.exports = { getUserById, getUsers, createUser, updateUser, deleteUser };