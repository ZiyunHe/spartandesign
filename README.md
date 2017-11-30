# Spartan Design
This is a website made by group 6 contributing for class use in SE131. Spartan Design is a web service built with Ruby on Rails.

# Features
* Designer recognition and support
* Community involvement with school clothing
* Accessible user interfaces

# Pre-Requisites
* Ruby >2.4.1-2
* Rails >5.1.4

# How to run Spartan design on your local computer, and fix bugs
- Install Ruby and Rails
- Download Master branch
- In Terminal, direct into downloaded folder
- run "rake db:migrate"
- run "rails s"

Then you will encounter error says "require_tree argument must be a directory” 
That's because git ignores empty folder when upload

To fix this:
- go into downloaded spartandesign-master folder
- Go to the directory app/assets/javascripts/
- create folder called "channels"
- Then go to directory app/assets/javascripts/channels
- Create empty file within that folder, called ".keep"
the address of the new file will be "app/assets/javascripts/channels/.keep"

Now run "rails s",
the website should be working fine. 
