# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: Model is the framework of the data. View is what is seen on the page by the users. Controller is how to data is sent to and from the page.

  Researched answer: The browser (on the client) sends a request for a page to the controller on the server.
The controller retrieves the data it needs from the model in order to respond to the request.
The controller gives the retrieved data to the view.
The view is rendered and sent back to the client for the browser to display.



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the __route_______ in the file config/routes
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the ________controller____ in the file ___statics_controller.erb__________
  ```
  class ______staticsController______ < ApplicationController
    def ______about_____
      render: _______about.html.erb_________
    end
  end
  ```

  Step 3: Create the View in the file ______app/views/statistics________
  code:
  ```
  <div>This is the About page!</div>
  ```


3. Consider the Rails routes below. Describe the responsibility of  each route. Which routes must always be passed params and why?

```
/users/       method="GET"     # :controller => 'users', :action => 'index'
/users/1      method="GET"     # :controller => 'users', :action => 'show'
/users/new    method="GET"     # :controller => 'users', :action => 'new'
/users/       method="POST"    # :controller => 'users', :action => 'create'
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
```
The get method is how a user tells a server that it wants information. The post method is how a user tells a server to add data. The put method is updating an existing object . The delete method is how the user removes an object that has been identified.




4. What is the public folder used for in Rails?

  Your answer: page that would be publicly accessible in the application example: login page

  Researched answer: In many MVC frameworks (e.g. Rails), the public folder is used to serve static files. So for example, you often see 404.html, 500.html and favicon.ico files in there when creating the project through the "usual" means provided by such frameworks. These are "dumb" files that don't interact w/the backend.



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

get '/game/:guess' => 'main#game'

6. What are cookies? What is the difference between a session and a cookie?

  Your answer: Cookies store your information when you visit a page and a session is the time your are on the page.

  Researched answer: Cookies and Sessions are used to store information. Cookies are only stored on the client-side machine, while sessions get stored on the client as well as a server. A session creates a file in a temporary directory on the server where registered session variables and their values are stored.



7. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: it tells you where the data is going to go

  Researched answer: The purpose of the HTML action attribute is to specify the URL of a form processor.



8. Name two rails generator commands and what files they create:

  Your answer:rails generate controller makes a controller and an .html.erb file, rails generate model creates a data model

  Researched answer: rails generate migration updates the file schema. rails generate mailer adds a new file in the app called mailers


9. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1 To make the "Unknown action" go away, you can define a create action within the ArticlesController class in app/controllers/articles_controller.rb, underneath the new action

class ArticlesController < ApplicationController
  def new
  end
 
  def create
  end
end

2 We're going to see the same generator that we used before when creating the Article model. This time we'll create a Comment model to hold a reference to an article.
rails generate model Comment commenter:string body:text article:references

class Comment < ApplicationRecord
  belongs_to :article
end

3 In the ArticlesController we need to have a way to block access to the various actions if the person is not authenticated. Here we can use the Rails http_basic_authenticate_with method, which allows access to the requested action if that method allows it.

class ArticlesController < ApplicationController
 
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
 
  def index
    @articles = Article.all
  end