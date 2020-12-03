#! /usr/bin/ruby
require 'plist'
require 'csv'

results = `system_profiler -xml -detailLevel mini SPApplicationsDataType`

plist = Plist.parse_xml(results)
items = plist[0]['_items']

apps = items.map { |el| [el['_name'], el['path']] }

CSV.open('applications.csv', 'wb') do |csv|
  apps.each { |line| csv << line }
end
