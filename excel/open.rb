#!ruby -Ku
# -*- mode:ruby; coding:utf-8 -*-

require 'rubygems'
require 'spreadsheet'

book = Spreadsheet.open('sp_test.xls')
sheet = book.worksheet('test')
10.times do |n|
  printf "%3d %3d %s\n" ,sheet[n,0],sheet[n,1],sheet[n,2].encode('UTF-8')
end
