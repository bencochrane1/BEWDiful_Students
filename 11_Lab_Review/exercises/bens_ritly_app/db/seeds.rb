# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts 'Adding seed urls'
Url.create link: 'http://generalassemb.ly',
           hash_code: '2374'

Url.create link: 'http://pulse.me',
           hash_code: '3465'

Url.create link: 'http://skypadstands.com.au',
           hash_code: '2365'

puts 'Done adding stories'