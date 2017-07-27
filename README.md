# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Installation
------------

```
$ git clone https://github.com/Chitroopa/manchit-baby-products
$ cd manchit-baby-products
```

Install required gems:
```
$ bundle install
```

Start postgres:
```
$ psql
```

Create databases:
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Start the webserver:
```
$ PUBLISHABLE_KEY=pk_test_6pRNASCoBOKtIshFeQd4XMUh SECRET_KEY=sk_test_BQokikJOvBiI2HlWgH4olfQ2 rails s
```

Navigate to `localhost:3000` in browser.


### Gems used

wicked
Rails admin
Stripe
paperclip

### Feature user stories

1. have clear intuitive categories for products (munchkin website clone)
2. add my favorite products to favorites/wish list
3. create daily deals and alert me when an item on my wishlist goes on sale
4. allow me to rate and review items/ delete my own  comments
5. allow me to add images to my review
6. allow me to choose where items are delivered/gift wrapping
7. as admin put items on sale
8. allow users to pay on site with Stripe api
9. Add AJAX
10. Create mutistep form for checkout using wicked gem
11. calculate average rating and add stars to represent rating
12. add validations and test cases
13. do integration testing
14. deploy to heroku
15. create a seed file with some real data
