# PAWSH

Pawsh is a web app for dog owners. The users are able to enter locations that are dog-friendly. Some of the categories are dog parks, dog-friendly hotels, and restaurants. They are also able to post reviews of each location.

The idea to create Pawsh was born when I was planning a mini vacation in San Diego. I wanted to take my dog, so I started to look for dog-friendly hotels and restaurants.

### Features
* User sign up
    * User need to provide name, email, and password
    * The password confirmation need to match
    * The password need to be at least 8 characters
    * The email need to be unique (cannot be used by another user)
* User login
    * Email and password need to be provided
    * Credentials need to be in our database in order to login
* Visitors are able to browse locations and reviews 
* User profile
    * They will get a default profile picture 
    * They will be able to add pictures to their profile
    * They are able to change their name and password
* Locations
    * Locations are divided by categories (dog parks, restaurants, hotels, vets, groomers, and pet stores)
    * Visitors/users are able to see locations by categories or all
    * Locations are shown in a map
    * Users need to login to post a new location
    * Need to provide at least a name and address to create a new location. They can add pictures.
    * Users are able to edit or delete their own location only
    * Users are able to edit/delete the pictures they entered
    * Locations show the average rating from the reviews
* Reviews
    * Each location shows reviews on the bottom of their page
    * The reviews show the rating and comments
    * Review shows who submitted the review, and if they don't have any picture, they get a default profile picture
    * Users can add reviews to any location. They can add pictures
    * Users are only able to edit their own review


## Technologies Used:
Ruby on Rails, Paperclip (to upload images), Bcrypt (to sign up and login), Materialize (to style)

## Getting Started: 
Click [here](https://pawsh.herokuapp.com/) to visit the app.

Click [here](https://trello.com/b/YYc8hVyy/pawsh) to visit my Trello board.

## Next Steps:
* Check to see if locaiton already exist before submitting
* On the map, when the marker is clicked, I want to show information
* I want to user to enter locations by name and autocomplete the address
* When users add a new location, I want to confirm if the address is a valid address
* I would like for users to edit/delete pictures for the reviews and profile

