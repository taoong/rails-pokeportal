# Q0: Why are these two errors being thrown?
The first error is because we need to update our database.
The second error is because our Pokemon model hasn't been created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
When we ran `rails db:seed`, it generated an array of four Pokemon (in `seeds.rb`). Every time we enter the home page, we are selecting a random Pokemon from this array. Based off of the `seeds.rb` file, the Pokemon can be in any level from 1 to 20.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line creates a button with the text "Throw a Pokeball!" and the classes "button" and "medium". 
When the button is clicked, a patch request is called with the id of the pokemon passed as a parameter.

# Question 3: What would you name your own Pokemon?
Taozo

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the id of the current trainer. This is because we simply want to refresh the page of the trainer page that we are currently on.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
`application.html.erb` does the actual rendering of the messages at `layout/messages`, and `full_messages` and `to_sentence` are used to first get all of the messages in an array and then return them all in one sentence.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
