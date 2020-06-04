'use strict';
/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */
const nodemailer = require('nodemailer');

let transporter = nodemailer.createTransport({
  host: "smtp.gmail.com",
  port: 587,
  secure: false, // true for 465, false for other ports
  auth: {
    user: 'healthrender@gmail.com',
    pass: 'RHsecurity911',
  },
});

module.exports = {
    create: async ctx => {
        // create new create in database.
        const activities = await strapi.query('activities').create(ctx.request.body);
        
        // Send an email.
        let info = await transporter.sendMail({
          from: '"Fred Foo 👻" <welcome@mysite.com>', // sender address
          to: "info@mallorcard.es", // list of receivers
          subject: "New Activity ✔", // Subject line
          text: "New Activity has been created successfully!", // plain text body
          html: "<b>New Activity has been created successfully!</b>", // html body
        });

        // Send response to the server.
        ctx.send({
          ok: true,
        });
    },

    //custome API for update data
    async activities_price(ctx) {
      const data = ctx.request.body;
      //get all listing
      let allData = await strapi.query('activities').find();
      let entity;
      if(allData){
        allData.forEach(async element => {
          //update particular record
          entity = await strapi.services.activities.update({ id : element.id }, {price : (element.price - element.price/data.discount)});
        });
      }
      return 'Data has been updated successfully!';
    },
};
