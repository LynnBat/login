## Installation
1. `git clone git@github.com:LynnBat/login.git`
2. `bundle install`
3. Setup all necessary environment variables in `.env`

## Setup .env
All variables from `.env.sample` have to be filled with proper values in `.env`

`APP_HOST` - URL

`BROWSER` - with a current setup of spec_helper.rb, this variable can be only `chrome` for tests on Google Chrome browser

## Running Tests
In order to run all specs 
`rspec`

In order to run exact spec
`rspec <dir>/<file>`

In order to run exact test in the spec
`rspec <dir>/<file>:<line_number>`
