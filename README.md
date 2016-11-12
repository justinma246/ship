# Ship ~ A Dating App

# GENERAL

-Ship 2 other people

-Connect with social media

-Choice to “ship” or “nah” - tinder style

-Ship others to remain visible for other people to ship you

-Chat with other people when ships have sailed

-Set your own ship threshold (how many ships until match created - opens up chat - only show when the higher ship threshold between the two is reached -  purpose of this is to reduce spam shipping and raise standards) 

Potential matches based on:
 - Location
 - Gender
 - Profile similarity ratings (don’t focus too much on this)
 - Hidden preferences(race)
Achievements (just pull whether they meet the req)
 -  # of Successful ships they voted on
 -  # of successful ships they were a part of

# MODELS / CONTROLLERS

User Model:
 - id:integer
 - provider:string
 - uid:integer
 - name:string
 - oauth_token:string
 - oauth_expires_at:date
 - age:integer
 - gender:string
 - interested_in:string (male or female)
 - bio:string (describing self)
 - ships:integer (number of successful ships)

User Controller:
 - from_omniauth => checks if user is already in database. If in database, log in to that user. Else, create new user.
 
Ships
 - Shippee 1
 - Shippee 2
 - Shipper
 - Pass/Nah

Sails
 - Shippee 1
 - Shippee 2
 - Sailed/Nah

# DEV STUFF

Run `bundle install && npm install`

To run the server: `foreman start -f Procfile.dev`
Visit site at: `localhost:3000`

All client front-end files are under `client/app/bundles/ship`
Components should go under `client/app/bundles/ship/components`