# CONTROLLERS.MD

### What Does a Controller Do? 

- A controller can be thought of as a middleman between models and views. 
The controller takes input from the user through the view and acts on it, usually causing the model to change state during the process.

- Action Controller is the C in MVC. After routing has determined which controller to use for a request,
the controller is responsible for making sense of the request and producing the appropriate output. 
Luckily, Action Controller does most of the groundwork for you and uses smart conventions to make this as straightforward as possible.

- For most conventional RESTful applications, the controller will receive the request (this is invisible to you as the developer), 
fetch or save data from a model and use a view to create HTML output. 
If your controller needs to do things a little differently, that's not a problem, this is just the most common way for a controller to work.

- It makes the model data available to the view so it can display that data to the user, and it saves or updates user data to the model.
 
### What is Rails naming convention for controllers?
- Capitalized first letter and singular form
- File name becomes # => resource_controller.rb
 
### What's a controller action? 


 ```
 A controller is a Ruby class that inherits from Application Controller and has methods just like any other class. When your
 application receives a request, the routing will determine which controller and action to run.
 Example:  going to /clients/new will create a ClientsController in rails and call the NEW method.
 
Rails standard seven controller actions: index, show, new, create, edit, update, and destroy
 
 
class ClientsController < ApplicationController
  def new
  end
  
end

 the empty method is ok because rails by default will render the new.html.erb
```


### What does Rails do with query string parameters and POST parameters? 

- Rails does not make any distinction between query string parameters 
and POST parameters, and both are available in the params hash in your controller
    ex:  To send a hash, you include the key name inside the brackets:
    
    ```
    <form accept-charset="UTF-8" action="/clients" method="post">
      <input type="text" name="client[name]" value="Acme" />
      <input type="text" name="client[phone]" value="12345" />
      <input type="text" name="client[address][postcode]" value="12345" />
      <input type="text" name="client[address][city]" value="Carrot City" />
    </form>
    ```
    
    ```
      class ClientsController < ApplicationController
      # This action uses query string parameters because it gets run
      # by an HTTP GET request, but this does not make any difference
      # to the way in which the parameters are accessed. The URL for
      # this action would look like this in order to list activated
      # clients: /clients?status=activated
      def index
        if params[:status] == "activated"
          @clients = Client.activated
        else
          @clients = Client.inactivated
        end
      end

      # This action uses POST parameters. They are most likely coming
      # from an HTML form which the user has submitted. The URL for
      # this RESTful request will be "/clients", and the data will be
      # sent as part of the request body.
      def create
        @client = Client.new(params[:client])
        if @client.save
          redirect_to @client
        else
          # This line overrides the default rendering behavior, which
          # would have been to render the "create" view.
          render "new"
        end
      end
    end
    ```
 
 
### What happens if the "Content-Type" header of your request is set to "application/json"?

- [link to JSON HEADER tutorial on Ruby Doc](http://edgeguides.rubyonrails.org/action_controller_overview.html#json-parameters)
- If the "Content-Type" header of your request is set to "application/json", Rails will automatically load your parameters into the params hash, which you can access as you would normally.
 
### What are filters? 

- [Link to Ruby Doc on Filters](http://guides.rubyonrails.org/action_controller_overview.html#filters)
- Filters are methods that are run "before", "after" or "around" a controller action.
- Filters are inherited, so if you set a filter on ApplicationController, it will be run on every controller in your application.
- "before" filters may halt the request cycle. A common "before" filter is one which requires that a user is logged in for an action to be run. 
- Example:
```
before_action :require_login
```
- "after" filters are similar to "before" filters, but because the action has already been run they have access to the response data that's about to be sent to the client. 
- "around" filters are responsible for running their associated actions by yielding, similar to how Rack middlewares work.
- amazing built in methods that allow for easier handling of various actions( 

)
