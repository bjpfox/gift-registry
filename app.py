from flask import Flask, render_template, request, redirect, session

app = Flask(__name__)

# TODO - add the following routes
# * User sign up page
# User login / logout
# * Ability to join an existing group(s) 
# * Abiility to create a new group and invite others to join
# * Ability to create a new birthday list, and share with others via a unique code 
# * Ability for birthday person to edit an existing list
# * Ability for friends to change gift status from Wanted to Purchased
# * Ability to delete list

@app.route('/')
def index():
    return render_template('index.html') 

# prevents confusion between web server gateway interface instances 
if __name__ == "__main__":
    app.run(debug = True)
