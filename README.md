# Directus WebApp Example
This is a simple boilerplate webapp (agency website) that provides an example of how Directus might be integrated into a project build. You can see an example of this site here:

**[example.getdirectus.com](http://example.getdirectus.com)**

> **Note:** This example codebase will be updated over time to include more complex examples of SDK integration.

## Languages & Libraries
* **PHP** – Server-side code
* **Directus PHP SDK** – Connects to a local/remote DB
* **Slim** – Page routing
* **Twig** – Templating
* **Composer** – PHP dependency management
* **Sass** – Compiled CSS

## Database & Install
A `schema.sql` file contains the entire database for both project and Directus tables. Simply create a new database, import this file into it, and create/update the `config.php` (copy: `config.example.php`). Finally, run `composer install` within the project directory to fetch the vendor files.

## Directus
You can install Directus alongside this example to manage the database. The version used in this example is noted in `config.example.php` file. Once installed, be sure to point the Directus upload folder to this project's `/public/uploads` directory (the examples files/thumbs are already there).
