# gift-registry-app
For project 2 of the General Assembly Software Engineering Immersive, I plan to build a birthday list app which is essentially a gift registry whereby users can share their birthday lists with friends and family.


### Structure of web app
The app will comprise the following pages / features:
* User sign up page
* Ability to join an existing group(s) 
* Abiility to create a new group and invite others to join
* Ability to create a new birthday list, and share with others via a unique code 
* Ability for birthday person to edit an existing list
* Ability for birthday person to edit individual items
    * Problem: if someone changes something, should that change the details for other users, who might also be referencing the same gift? For now, keep gifts unique for all users. 
* Ability for friends to change gift status from Wanted to Purchased
* Ability to delete list


### Extensions 
If time I may add some of the following:
* Ability to comment on gift lists
* Integration with API, e.g. Amazon
* Auto gift suggestion
* Options to share list with a unique URL
* Ability for website to generate emails to invite family members


### Challenges
* How to ensure codes are unique and not duplicated?

### Things to think about 
* How can OOP be used here? What objects would make sense?
    * Gift
        * Methods: ?  
    * Gift list
        * Methods: add_gift(), remove_gift(), change_gift_status() ? 
    * User 
        * Methods: create_new_list(), edit_list(), delete_list()  
* What methods would make sense for each of these? 


### Design decisions to make
* Are groups (of families/friends) useful or needed? Can just map user id to gift list. It could help if someone wants to regularly send their list to multiple people. But isnt neccesary to relate back to the gift list, that can just be related to individuals.  
* If someone has the unique code and logs in do they get added to the list automatically even if they weren't originally on the invite list? I think they should as perhaps they're just using a different email address. 
* Means of sharing: unique code, vs specific email - decided to use unique code as easy to share, may not know everyones email address.
* What is the purpose of groups? They could be just a way for someomne to more easily distribute their list to the same 6 or 7 people every year. Do the members know they're in a group? Can they add / remove themselves? I dont think a given list should only be visible to a group as that would become too rigid. There could be some value in having people know theyre part of a group, as it might create more of a sense of community, and encourage them to also post their lists; but on the other hand, they may not want to post to the same people. Also, if we are using unique codes then people can just email them around, no need to use the website to generate the emails, at least not for MVP. Conclusion: groups are not required for MVP.

### User stories 
As the birthday person, I want to:
* Easily add / remove gifts from the list
* Easily share my list with my friends/family, even those who may not wish to sign up

As a friend of the birthday person, I want to:
* View the list without having to sign up
* Change the status of a gift if I am purchasing it, so others don't purchase it as well


### Technology used
* Web server: Python flask
* Database: postgresql 
* Front end: HTML, CSS, Javascript (TBC)


### Technical aspects
* TBC