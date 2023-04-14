import Sequelize from 'sequelize';
import dataBase from './database.js';

const {DataTypes} = Sequelize;

const UserSigap = dataBase.define(
    'sigapUser', {
        name: {
            type: DataTypes.STRING,
        },
        email: {
            type: DataTypes.STRING,
        },
        password: {
            type: DataTypes.STRING,
        },
        refresh_token: {
            type: DataTypes.TEXT,
        }
    }, {
        freezeTableName: true
    }
);

export default UserSigap;

(async() => {
    await dataBase.sync();
})();