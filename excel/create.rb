#!ruby -Ku
# -*- mode:ruby; coding:utf-8 -*-

require 'rubygems'
require 'spreadsheet'

# bookを作成
book = Spreadsheet::Workbook.new
# sheetを作成
sheet = book.create_worksheet
# sheetの名前を変更
sheet.name = 'test'
# 書き込む内容(10行分)
10.times do |n|
  sheet[n,0] = n
  sheet[n,1] = n*n
  sheet[n,2] = "日本語表示"
end
# 書き込み
book.write('sp_test.xls')
