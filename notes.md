## HTTP

HTTP which stands for HyperText Transfer Protocol is a stateless request/response protocol, and is the standard format for how messages are defined and transmitted over the web. clients make requests to web servers over the internet using HTTP. Web servers respond to those client requests also through HTTP. HTTP is used at the application layer, and runs on top of TCP/IP (the transport and network layers) 

## TCP/IP

A set of protocols that establish how systems should communicate with each other over the internet.

#### TCP
Transport Layer Protocol. It provides the delivery between clients and servers communicating by IP

#### IP
Internet Layer Protocol. It uses IP Adresses to deliver data from the source to destination

## HTTP REQUEST AND RESPONSE COMPONENTS

#### HTTP REQUEST
A request is sent to a host, this includes a request line, which is the http method and path for the requested resource.  A request also contains a host header which provides the host and port information. It may also contain parameters, additional headers, and a body. 

#### HTTP RESPONSE
The Server processes the request and sends back a status number (200 OK, 404 Not Found), response headers (optional), and a body (optional) as a response.

## COMPONENTS OF URL

A url contains many parts. (ex: `http://www.foobar.gov:80/cartoon/disney?name=Donald+Duck&age=88`)

scheme - `http`
host - `www.foobar.gov` 
port - `:80` (port 80 common for http)  
path - `/cartoon/disney` 
query string - `?name=Donald+Duck&age=88`

(query strings begin with ? then parameters of key value pairs separated by an =. and each parameter separated by an &)

## GET vs POST

The HTTP methods get and post both have their own purposes.

#### GET
GET requests are used to get a resource. GET requests should only retrieve content from the server and not send, update or create data. The exception being search engine search bar client requests

GET request are used for things such as requesting html for a webpage, requesting a resource (image, video, software), an action that you are trying to get something from the host server.

#### POST
POST requests are used to submit and send data, and initiate some action, such as submitting forms, editing or deleting data from the server, etc. The data is not submitted by query string, but rather inside the optional body of the HTTP message.

POST requests involve changing, deleting, and creating values that are stored and persist on the server.

## CLIENT VS SERVER

the client/server model is the structure that describes the interaction over the web between resource/service providers and those making requests to said providers. 

#### CLIENT
Any software (most commonly web-browsers) that interacts and makes HTTP requests over the web. And displays the response in a meaningful way back to the user.

#### SERVER
Computers whose purpose is to accept and handle requests for an action or resource, and then in turn do work, and issue a response back to the client.

## CLIENT VS SERVER CODE
#### CLIENT CODE
client code is the javascript, html and css
#### SERVER CODE

`config.ru` - in a Rack application the `config.ru` or rackup file (a file with the extention `.ru`) is the startup code for a rack application. It specifies what application to run and how to run the application. It lives in the root of the project that instructs the web server how to start the application.

`cms.rb` (application code) - This file contains all the Sinatra routes (GET, POST, DELETE, etc), Sinatra helpers, and Sinatra configuration settings (like enabling sessions, setting session secret, etc)

`Gemfile` - is used for describing all of the gems and their version used (with various operators to distinguish version(s) allowed) in the Ruby project. It can group gem dependencies, and is used to define which version of Ruby is used

```ruby
source "https://rubygems.org"

ruby "2.4.1"

gem "sinatra", "~>1.4.7"
gem "sinatra-contrib"
gem "erubis"

group :production do
  gem "puma"
end

```
`Procfile` - this tells Heroku how to run components of the application, it specifies the commands that are executed, declaring the process type, and command. 

``` ruby
web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
```

The part to the left of the colon on each line is the process type. The part on the right is the command to run to start that process (setting up web server puma)

## WEB

### HTML FORMS

A form is an html element that allows users to enter, check, select data which is then sent to a web server for processing.

What happens behind the scences when a user clicks submit on a web form containing text input?

Example of a simple web form.

```
<form action="/new_user" method="post">
  <input type="text" name="user_name">
  <input type="submit">
</form>
```
#### FORM

The opening `<form>` tag has the following attributes.

Action- this points to the route the server side application code handles.

ex: `<form action='/new_user'>`

Method- defines the HTTP method used in the form request. 

ex: `<form method='post'>`

The default method is GET. If GET is used, the form passes the form data as URL parameters. If POST is the method used, the form data is sent in the body of the request.

#### INPUT

Input elements of various types are placed in between the opening and closing `<form>` tags. The opening `<input>` tag has the following attributes (not an exhaustive list).

Type- This tells what kind of input should be created.

Name- This gives a name to the specific input field, and helps to identify and understand the data on the server side.

`<input type="text" name="user_name">`

#### SUBMIT

In order to submit a form an input element with the type "submit" is added inside the form tags.

`<input type="submit">`

When a user clicks this after filling out the form data, an HTTP request is made to the web server serving the form.

#### FORM SUBMISSION TO SERVER

The server receives a request to route `post "/new_user"` from the client that just submitted the form (the action and method attributes of the form element defines the request). Inside the routes block, the application code does its specified processing. The return value of last line of the routes block is whats returned back to Sinatra, which then is used to create a valid HTTP response with the routes return being set as the body of the response. This response gets sent to the web server which then sends it back as a response to the client.

### SANITIZE USER CONTENT

user content must not be trusted. Attacks in a multitude of types can be waged on your application, so input sanitation must not be overlooked.

##### escaping
escaping involves taking special characters and replacing them with their equivalent html entity (text strings that start with `&` and end with `;`). These characters that need to be escaped would be interpreted as HTML otherwise. Such as nefarious code from a script tag.

Ruby provides a built in method that escapes reserved characters from a string.

`Rack::Utils.escape_html "<script></script>"`

##### automatic escaping
many libraries now escape all output, to strip the responibilty of developers in having to remember to escape all user input. Giving the option to disable auto-escaping. (in ERB using `<%== %>` instead of `<%= %>` lets you disable auto-escape.)

```
configure do
  set :erb, :escape_html => true
end
```
The code above when placed in your application `.rb` file configures erb to auto-escape