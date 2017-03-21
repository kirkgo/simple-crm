# Simple CRM # 

Simple CRM is a CRM made for companies that wish to manage their contacts among their team mates.

Although it sounds like an extremely simple concept don't be fooled by the apparent basic functionality. Under the hood this CRM uses a concept called multi-tenancy and in simple terms, it allows each company to have it's very own separate database to store its users and contacts.

Feel free to fork, change, modify and re-use it.

# What is Multitenancy #

A single-tenant application is an application that is used by a single entity, be it a single user or a single company. It’s not important in this case that the data in this application be kept separate from the other data since all the data belongs to one entity.

A multi-tenancy application is one that can be used by multiple entities at the same time, typically with the data for those entities kept separate from the other entities. When a user signs in, they should only be able to see one set of data, and not the data from other places.

## Installation ##

````
$ git clone https://github.com/kirkgo/simple_crm.git
$ cd simple_crm
$ gem install bundler
$ bundler install
````

### How to use it ###

In *config/* folder you will find three examples of database.yml file: 

* database.yml.postgresql for PostgreSQL
* database.yml.mysql for MySQL
* database.yml.sqlite for SQLite3

Choose your database and rename the file to *database.yml*. Do not forget to uncomment the line referring to your database in Gemfile. After doing this, run the following commands: 

````
$ rake db:create
$ rake db:migrate
````

Start the Rails Server

````
$ rails server
````

Point your browser to [lvh.me:3000](lvh.me:3000) and enjoy it! 

## Pull-Requests! ##

This is an example how to use multitenancy in Rails and definitely can be improved. Pull requests are very much welcomed and desired. Don't be afraid. Just do it! :)


## Copyright & License ##

Copyright (C) 2017 Kirk Patrick - Released under the MIT License.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
