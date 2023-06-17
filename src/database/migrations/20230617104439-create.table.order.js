'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('Order', {
      id: {
        type: Sequelize.DataTypes.BIGINT,
        autoIncrement: true,
        primaryKey: true
      },
      datetime: {
        type: new Sequelize.DataTypes.DATE,
        allowNull: false,
        defaultValue: Sequelize.NOW
      },
      totalfee: {
        type: new Sequelize.DataTypes.FLOAT,
        allowNull: false
      },
      // services: {
      //   type: Sequelize.DataTypes.ARRAY({ type: Sequelize.DataTypes.BIGINT }),
      //   references: { model: 'Service', key: 'id' },
      //   allowNull: false
      // }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('Order');
  }
};
