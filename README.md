# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

### Ruby version
  2.6.3p62

### Database creation
  Postgresql

# DB design
## tweets table
|Column|Type|Options|
|---|---|---|
|image|string|null:false|
|text|text|index:true|
|user_id(FK)|integer|foreign_key:true|

### Association
- belongs_to:user
- has_many:comments

## user table
|Column|Type|Options|
|---|---|---|
|nickname|string|null:false|
|email|string|null:false,unique_true|
|password|string|null:false|
|password_confirmation|string|null:false|

### Association
- has_many:tweets
- has_many:comments

## comments table
|Column|Type|Options|
|---|---|---|
|text|text|null:false|
|tweet_id(FK)|integer|foreign_key:true|
|user_id(FK)|integer|foreign_key:true|

### Association
- belongs_to:tweet
- belongs_to:user