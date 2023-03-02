from flask import Flask, render_template, request, redirect, session
from models.gifts import get_all_gifts

app = Flask(__name__)

# prevents confusion between web server gateway interface instances 
if __name__ == "__main__":
    app.run(debug = True)

# TODO - add the following routes
# View birthday list page
# User sign up page
# User login / logout
# Ability to join an existing group(s) 
# Abiility to create a new group and invite others to join
# Ability to create a new birthday list, and share with others via a unique code 
# Ability for birthday person to edit an existing list
# Ability for friends to change gift status from Wanted to Purchased
# Ability to delete list

@app.route('/')
def index():
    return render_template('index.html') 


@app.route('/view-list')
def view_list():
    gift_list = get_all_gifts()
    return render_template('view-list.html', gift_list = gift_list) 