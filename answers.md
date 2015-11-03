# Q0: Why is this error being thrown?
	Because no pokemon have been initialized.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	They are appearing in text format as part of the website. The common factor between them is that they are all starter pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? 
	Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
	It creates a button of size medium that has the text 'Throw a Pokeball' and the capture_path(id: @pokemon) part finds the path to that pokemons page and binds it to the trainer.

# Question 3: What would you name your own Pokemon?
	Rubion

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	I passed it trainer/show/user_id which is a path that needs the user ID to know which page to return to after damaging the pokemon.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
