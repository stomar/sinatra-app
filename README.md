Sinatra Application
===================

![CI](https://github.com/stomar/sinatra-app/actions/workflows/ci.yml/badge.svg)

A basic Sinatra application template using Sequel, SQLite, and minitest specs.

Features:

  * clear folder structure with db, lib, views, test, ...
  * Rake tasks for database setup (schema, seed data)
  * testing with in-memory SQLite database

## Setup Application

1. Install dependencies:

   ``` sh
   bundle install
   ```

2. Setup database:

   ``` sh
   bundle exec rake db:setup
   ```

3. Run tests:

   ``` sh
   bundle exec rake
   ```

4. Launch server:

   ``` sh
   bundle exec rake serve
   ```

   or

   ``` sh
   bundle exec rackup config.ru
   ```

5. Open site at `localhost:9292`

## License

Copyright &copy; 2016-2024 Marcus Stollsteimer

This is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License version 3 or later (GPLv3+),
see [www.gnu.org/licenses/gpl.html](http://www.gnu.org/licenses/gpl.html).
There is NO WARRANTY, to the extent permitted by law.
