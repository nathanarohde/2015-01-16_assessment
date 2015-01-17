Description:
Phone book
Stores contacts containing names and from 1 to 3 different phone numbers. (Home, Work, Cell)

Set up instructions:
Ruby Version 2.20

In terminal enter the following two commands:
gem install bundler
bundle


remote: http://rubygems.org/
specs:
  backports (3.6.4)
  multi_json (1.10.1)
  rack (1.6.0)
  rack-protection (1.5.3)
    rack
  rack-test (0.6.3)
    rack (>= 1.0)
  sinatra (1.4.5)
    rack (~> 1.4)
    rack-protection (~> 1.4)
    tilt (~> 1.3, >= 1.3.4)
  sinatra-contrib (1.4.2)
    backports (>= 2.0)
    multi_json
    rack-protection
    rack-test
    sinatra (~> 1.4.0)
    tilt (~> 1.3)
  tilt (1.4.1)

DEPENDENCIES
  sinatra
  sinatra-contrib

Copyright 2015 Nathan Rohde

License: GPL v2
Created by Nathan Rohde

Known Errors:
*With this in mind it is also possible to enter in phone numbers longer and shorter than the default 10 characters required.

Fixed Errors:
*Because the program accepts string inputs and does not conduct any checks any string of characters can be entered in any field.
  FIXED WITH COMMIT 13:Program now only accepts numeric characters for home_phone, work_phone and cell_phone in form.erb
*If user entered a name with two or more parts seperated by a space website will crash when trying to create a page for that entry.
  FIXED WITH COMMIT 13:Program now uses gsub for input name.  Replaces " " with "_"
