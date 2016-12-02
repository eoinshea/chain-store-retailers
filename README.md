Chain store Retailers Management System
https://chainstore.herokuapp.com


Rails 4.1.2
Ruby 2.3.1
Postgres
Bootstrap
Rails Admin
C3.js 
JQuery



email: 'shropshire@example.com', password: 'shropshire'     APPROVED__
email: 'glasgow@example.com', password: 'glasgowglasgow'    APPROVED__
email: 'essex@example.com', password: 'essexessex'          NOTAPPROVED__
email: 'london@example.com', password: 'londonlondon'       NOTAPPROVED__
email: 'cardiff@example.com', password: 'cardiffcardiff     NOTAPPROVED__
__
If you login with an approved user you should see a chart and a table of sales underneath. With a week to week filter dropdown + button
__
To a approve a user the owner goes into the Owner admin panel and edits a user to APPROVED to allow that user to login.
The database is prepopulated with random sales data ony a weekly basis for generic items
THere is a CHart view and underdeath a table view
Week range can be selected from dropdown
__
TODO: __
more model specs__
less controller code__
move controller queries to model__
improve database performance__
improve queries !!!!!1111__
Lock out Owner view to a specific email and password only__
mobile responsiveness on owner view__
general style__
__
Issues__
No mailer__
No scope__
Probably a devise bug__
More tests__