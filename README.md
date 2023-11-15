# Blog

## Installation
* `bundle install`
* `rails db:migrate`
* `rails db:seed`

## Local Development
* `bin/dev`
  * Use this over `rails server` since we are using TailwindCSS

## Deployment

Deployed with [Render.io](https://render.com/)

* Append to the build command in Render `bundle exec rails db:migrate;bundle exec rails db:seed`. 
* Had to run `bundle lock --add-platform x86_64-linux` to add Linux platform used by Render.
* Had to run `bin/rails credentials:edit` to generate missing key for production.
  * Run `cat config/master.key` to copy key value, set as environment variable named `RAILS_MASTER_KEY`.