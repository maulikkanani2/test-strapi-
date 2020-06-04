content# Strapi application

A quick description of your strapi application

# About strapi

Strapi is a flexible, open-source Headless CMS that gives developers the freedom to choose their favorite tools and frameworks while also allowing editors to easily manage and distribute their content. By making the admin panel and API extensible through a plugin system, Strapi enables the world's largest companies to accelerate content delivery while building beautiful digital experiences.

# Features

Custom Content Structure
Easy Content Management
Developer-Friendly API
Roles & Permissions
Plugin system
Customization

# Login credential
```sh
username : testuser
email : test@gmail.com
password : 123456
```

# Database credential

```sh

    module    : 'sails-mysql',
    host      : 'localhost',
    port      : 80,
    user      : 'root',
    password  : '',
    database  : 'strapitest',

```

# Note

- added database sql file in `database/strapitest.sql` so you can set in localhost.
- before create strapi-app check and confirm to Use node version 12.16

# Project setup (How to use)
```
1. Clone this repository (or download and extract the .zip).
2. Copy .env.example file to .env (cp .env.example .env)
3. Database sql file in `database/strapitest.sql` import on localhost.
4. run nvm install 12.16
5. run nvm use 12.16
6. run npm run develop

To manage your project 🚀, go to the administration panel at:
http://localhost:1337/admin

To access the server ⚡️, go to:
http://localhost:1337


Good Luck :)