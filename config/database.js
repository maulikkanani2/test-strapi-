// module.exports = ({ env }) => ({
//   defaultConnection: 'default',
//   connections: {
//     default: {
//       connector: 'bookshelf',
//       settings: {
//         client: 'sqlite',
//         filename: env('DATABASE_FILENAME', '.tmp/data.db'),
//       },
//       options: {
//         useNullAsDefault: true,
//       },
//     },
//   },
// });


const sqlite = {
  connector: 'bookshelf',
  settings: {
    client: 'sqlite',
    filename: '.tmp/data.db',
  },
  options: {
    // debug: true,
    useNullAsDefault: true,
  },
};

const postgres = {
  connector: 'bookshelf',
  settings: {
    client: 'postgres',
    database: 'strapi',
    username: 'strapi',
    password: 'strapi',
    port: 5432,
    host: 'localhost',
  },
  options: {},
};

const mysql = {
  connector: 'bookshelf',
  settings: {
    client: 'mysql',
    database: 'strapitest',
    username: 'root',
    password: '',
    port: 3306,
    host: 'localhost'
  },
  options: {
    "debug": true,
    "pool": {
      "min": 2,
      "max": 6,
      "createTimeoutMillis": 9000,
      "acquireTimeoutMillis": 90000,
      "idleTimeoutMillis": 90000,
      "reapIntervalMillis": 1000,
      "createRetryIntervalMillis": 100,
      "propagateCreateError": false // <- default is true, set to false
    },
  }
};

const mongo = {
  connector: 'mongoose',
  settings: {
    database: 'strapi',
    username: 'root',
    password: 'strapi',
    port: 27017,
    host: 'localhost',
  },
  options: {},
};

const db = {
  mysql,
  sqlite,
  postgres,
  mongo,
};

module.exports = {
  defaultConnection: 'default',
  connections: {
    default: process.env.DB ? db[process.env.DB] || db.sqlite : db.sqlite,
  },
};