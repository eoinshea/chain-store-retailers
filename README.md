Chain store Retailers Management System
https://chainstore.herokuapp.com


 - Rails 4.1.2
 - Ruby 2.3.1
 - Postgres
 - Bootstrap
 - Rails Admin
 - C3.js 
 - JQuery

Information

 - email: 'shropshire@example.com', password: 'shropshire'     APPROVED__
 - email: 'glasgow@example.com', password: 'glasgowglasgow'    APPROVED__
 - email: 'essex@example.com', password: 'essexessex'          NOTAPPROVED__
 - email: 'london@example.com', password: 'londonlondon'       NOTAPPROVED__
 - email: 'cardiff@example.com', password: 'cardiffcardiff     NOTAPPROVED__

If you login with an approved user you should see a chart and a table of sales underneath. With a week to week filter dropdown + button

To a approve a user the owner goes into the Owner admin panel and edits a user to APPROVED to allow that user to login.
The database is prepopulated with random sales data ony a weekly basis for generic items
THere is a CHart view and underdeath a table view
Week range can be selected from dropdown

TODO: 

 - more model specs
 - less controller code__
 - move controller queries to model
 - improve database performance
 - improve queries !!!!!111
 - Lock out Owner view to a specific email and password only
 - mobile responsiveness on owner view
 - general style

Issues

 - No mailer
 - No scope__
 - Probably a devise bug__
 - More tests__
