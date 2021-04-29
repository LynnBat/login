## Instalation
1. `git clone git@github.com:LynnBat/login.git`
2. `bundle install`
3. Setup all necessary environment variables in `.env`

## Setup .env
All variables from `.env.sample` have to be filled with proper values in `.env`

`APP_HOST` - URL

`BROWSER` - with a current setup of spec_helper.rb, this variable can be only `chrome` for tests on Chrome browser

## Running Tests
`rspec <dir>`
