#!/usr/bin/env ruby
require_relative 'duplicate_searcher.rb'
require_relative 'report.rb'
class Application
  manager = DuplicateSearcher.new
  duplicates = manager.find_duplicates
  repeated_files = Report.new
  repeated_files.display_duplicates(duplicates)
end
