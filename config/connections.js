module.exports.connections = {
    mysql: {
      module    : 'sails-mysql',
      host      : 'localhost',
      port      : 80,
      user      : 'root',
      password  : '',
      database  : 'strapitest',
  
      // OR (explicit sets take precedence) 
      module    : 'sails-mysql',
      url       : 'mysql2://USER:PASSWORD@HOST:PORT/DATABASENAME',
  
      // Optional 
      charset   : 'utf8',
      collation : 'utf8_swedish_ci'
    }
  };