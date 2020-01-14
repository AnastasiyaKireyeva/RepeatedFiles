require_relative 'duplicate_searcher.rb'
class Report
  def display_duplicates(duplicates)
    duplicates.each_value do |filename_array|
      if filename_array.length > 1
        puts "====== Duplicate Files ======\n"
        filename_array.each { |filename| puts filename }
    end
    end
  end
end
