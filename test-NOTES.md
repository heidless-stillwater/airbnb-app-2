# [YOUTUBE: Let's build an Airbnb clone with Ruby on Rails - Part 1](https://www.youtube.com/watch?v=D889P37r3bc&list=PLCawOXF4xaJK1_-KVgXyREULRVy_W_1pe)

## [RSpec: AirBNB Clone: How to RSpec - Fairly comprehensive starter guide to RSpec](https://www.youtube.com/watch?v=AAqPc0j_2bg&t=121s)

### CONTENTS
- ### [cheatsheet](#cheatsheet)
- ### [git](#git-link)
- ### [rspec](#rspec)


### git-link
```
git checkout main

export H_BRANCH='19-pricing-1'
echo ${H_BRANCH}
git branch -d ${H_BRANCH}           # Delete local
git push -d origin ${H_BRANCH}      # Delete remote

## view commit history
git log
--
commit d6d2da4b4fdc2eab1da942f2f64a2c6b053a2d5a (HEAD -> 3-modal-4, origin/DEVELOP-0, DEVELOP-0)

--

## Reverting Working Copy to Most Recent Commit
## To revert to the previous commit, ignoring any changes:

git reset --hard HEAD

git reset --hard d6d2da4b4fdc2eab1da942f2f64a2c6b053a2d5a

# where HEAD is the last commit in your current branch

```

## cheatsheet
```
rvm use --default 3.3.5

/bin/zsh --login && rvm use --default 3.3.5

gem install rails -v 7.2.1

rails routes
rails routes -c api/users
rails routes -c api/users_by_email

# to fix deprecation warnings upgrade sass
#npm i sass@1.77.6 --save-exact
#rails _7.2.1_ new airbnb-app-2 -T -d postgresql -j esbuild --css bootstrap

#rails _7.2.1_ new airbnb-bootstrap-0 -d postgresql -j esbuild --css bootstrap

rails _7.2.1_ new partials-test-0 -d postgresql

gem uninstall gem-wrappers


#rails _6.1.7.8_ new test-app-2 -d postgresql

###########
# [bootstrap](https://getbootstrap.com/docs/5.0/getting-started/introduction/)
###########

rails g controller Home index

rails g model property name:string headline:string description:text city:string state:string country:string

rails g migration add_address_columns_to_properties address_1:string address_2:string

rails g migration add_latitude_and_longitude_to_properties latitude:float longitude:float
--
add_index :table, [:latitude, :longitude]
--
rails db:migrate db:test:prepare

psql
--
ALTER TABLE properties
DROP COLUMN longitude;

--
    return "301 Park Ave, New York, NY 10022, United States"
    return "City Centre, First Avenue, Lebuh Bandar Utama, Bandar Utama, 47800 Petaling Jaya, Selangor, Malaysia"
    # return "Aldwych, London WC2B 4DD"
--

# google maps
rails generate stimulus google-map

# places
rails generate stimulus maps
rails g scaffold places name latitude:decimal longitude:decimal

#########
# profile
#
rails g model profile user:references address_1:string address_2:string city:string state:string country:string latitude:float longitude:float

rails g migration add_zip_code_to_profiles zip_code:string
rails g migration add_zip_code_to_properties zip_code:string

rails db:migrate db:test:prepare

rails c
--
new_user = User.create email: "foo_1@bar.com", password: "password"
profile = new_user.profile
profile.update address_1: "99 Bd Haussmann, 75008 Paris, France", city: "Paris", state: "Île-de-France", country: "France", zip_code: "75008"


user = User.last
profile = user.profile
profile.update address_1: "99 Bd Haussmann, 75008 Paris, France", city: "Paris", state: "Île-de-France", country: "France", zip_code: "75008"

```

# rspec
#
## [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
## [Rails 6.1 adds support for validating numeric values fall in a range using `in:` option](https://blog.saeloun.com/2021/02/05/add-validate-numericality-in-range/)
```

rspec --init      # sets up a base skeleton for RSpec testing in the current app

rspec   # run ALL spec files

rspec spec --format documentation     # run ALL tests with DETAIL of both SUCCESS & FAILURE

rspec spec/models/post_spec.rb --format documentation 
rspec spec/models/property_spec.rb --format documentation 
rspec spec/models/profile_spec.rb --format documentation 
rspec spec/requests/home_spec.rb --format documentation 
rspec spec/requests/api/users_spec.rb --format documentation 

rspec spec/requests/api/users_by_email_spec.rb --format documentation 

rspec spec/views/posts/index.html.erb_spec.rb --format documentation 

rspec spec/card_spec.rb   #  isolate SPECIFIC test

./spec/card_spec.rb:3   # run spec file from example with LINE NUMBER = 3

# install
vi Gemfile
--
group :development, :test do
  gem 'rspec-rails'
  ...
--
bundle install

rails generate rspec:install
      create  .rspec
      create  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb

rspec spec --format documentation

```
