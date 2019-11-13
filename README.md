# Grammable

Nomster allows users to log in, create places on the page, and upload pictures or comments.

This application was created as part of the University of Wisconsin Extension Bootcamp.

## User Stories

As an anonymous user, I want to:
  * See grams uploaded by other users, so I can enjoy the content
  * See comments uploaded by other users, so I can feel part of the community

As an authenticated user, I want to:
  * Create a gram on the site so that I can share my photos
  * Update the messages to my photos so I can make them accurate
  * Add comments to grams created by others so that I can share my opinion
  * Remove grams and comments, if I no longer want them to appear online


## High Level Specs
Nomster is a Ruby on Rails application, with a database is managed by Postgres
* Rails v. 5.2.3
* Ruby v. 2.5.3

### Integrations Used

The following gems support Nomster's functionality:
* Devise, for user authentication
* RSpec and FactoryBot, for testing
* Figaro, for controlling environment variables
* Carrierwave, for photo upload
* fog-aws, for storing photos on Amazon Web Services
* Bootstrap, for page layout
