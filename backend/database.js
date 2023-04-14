import Sequelize from 'sequelize';

const dataBase = new Sequelize('sigap', 'root', '', {
    host: 'localhost',
    dialect: 'mysql',
});

export default dataBase;