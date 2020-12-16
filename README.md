# Rails 101
## [Convention Over Configuration](Convention Over Configuration)
  - Controller naming as plural
  - Model name is Class
  - Views name as controller
  - routes is a gateway to controller
  - params is filter to models
  - file structure
  - app/
  - config/

  - rails new <projectname> 

```
  % rails new project
  % rails g controller Articles new # generate controller with view file new
  % rails g model Article title:string text:text
  % rails g scaffold Article title:string text:text # To install books app.
  % rails destroy scaffold Article #To uninstall Article
  % rails db:migrate 


```

  etc.

## Asset Pipeline & WebPack
  - app/assets/javascripts
    - alternative of inline javascript
  - app/assets/stylesheets
    - now Web Packer

## Gem
  - library 
  - most ot the time/config someone gems
  - bundle
  - Gemfile
  - Gemfile.lock

```
  % bundle install
  % bundle update <what gem>

```
## RVM, RBenv

  - Install rvm

```
  % xcode-select --install
  % \curl -sSL https://get.rvm.io | bash
```

```
  % rvm use 2.6.3
  % rvm use 2.6.3@rails-6.0.3 --create
  % gem install rails -v 6.0.3.4
  % ruby -v
  % rails -v

```
  - To use ruby 2.6.3 and rails 6.0.3 run
```
  % rvm use 2.6.3@rails-6.0.3
```
## [Homebrew](https://brew.sh/)

```
  % /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  % brew install git
  % brew install postgres
```
## Debug

In Gemfile add 

```
gem 'pry-byebug'
```
In source code add

```
binding.pry
```
by Prateep Kul (prkul@paypal.com)
