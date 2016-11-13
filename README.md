# Ship ~ A Dating App

Welcome 

# GENERAL
Ship is a dating app where you can "ship" 2 other people based on their presented profile. Connected to social media (Facebook), you can matchmake others based on their pictures, basic information, interests, and more!  

For each scenario, the shipper will be given the option to either ship or pass on the coupling. Being active in shipping others places the shipper into the pool of bachelor and bachelorette's (if wanted). 

After enough ships from users (deemed on a personal ship threshold made to reduce spam shipping and raise standards), the couple will then be matched up, and are able to chat.

Potential matches are based on location, gender, profile similarity ratings, and more! In addition to all of this, achievements can be unlocked based on things such as the number of successful ships they voted on and the number of successful ships they were a part of.

Get shipping!

# MODELS / CONTROLLERS

User Model:
 - id:integer
 - provider:string
 - uid:integer
 - name:string
 - oauth_token:string
 - oauth_expires_at:DateTime
 - age:integer
 - gender:string
 - interested_in:string (male or female)
 - bio:string (describing self)
 - ships:integer (number of successful ships)
 - last_active:DateTime

User Controller: (profile page?)
 - has 3 buttons -> start shipping, profile, chat
 - leads to profile page

Chat Controller:
 - redirected when clicking chat
 - shows facebook messenger style chat

Shipping Model:
 - user1_id:integer (use uid of user model to get all information
 - user2_id:integer  necessary for both parties)
 - judge_id:integer (current user)
 - pass_count:integer (count used to compare to threshhold)

Shipping Controller: (displays the ship page)
 - method that gets all information of both people and judge?
 - method that increments pass_count on click of button (or in erb file)
 - VIEW that displays both profiles + buttons (pass / fail)
    -> possible success screen so the shipper can know if his ship resulted in a successful ship

Sail Model:
 - user1_id:integer
 - user2_id:integer
 - pass:boolean

# VIEWS
 - Landing Page => root :: views/home/login.html.erb
 - Home Page => /home#_=_ :: views/home/index.html.erb
 - Dock => /dock :: views/dock/index.html.erb
 - Profile => /profile :: views/home/profile.html.erb
 - Chat => /chat :: views/chat/index.html.erb

# DEV STUFF

Run `bundle install && npm install`

To run the server: `foreman start -f Procfile.dev`
Visit site at: `localhost:3000`

All client front-end files are under `client/app/bundles/ship`
Components should go under `client/app/bundles/ship/components`