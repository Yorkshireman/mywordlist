== README

This app is still very much in progress (so many of the features in the description have not been implemented yet), and I may well re-write entirely, after finishing Makers Academy, due to it not having been built using TDD; plus it would probably benefit from being re-written, to get DRY'd up and just be written following better practices generally.

To run this locally:
- Install Ruby
- `git clone git@github.com:Yorkshireman/mywordlist.git`
- `bundle`
- `rake db:create`
- `rake db:migrate`
- `rails s`
- Go to localhost:3000 in your browser.
  
Sign-up and add Words with definitions and categories.  
In your Wordlist you can click on categories to display only words with that category.