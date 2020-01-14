require_relative 'file_opener.rb'
require 'digest/md5'

class DuplicateSearcher
  def initialize
    @duplicates = {}
    path = FileOpener.new
    @path_directory = path.get_files
  end

  def find_duplicates
    Dir.glob(@path_directory, File::FNM_DOTMATCH).each do |filename|
      next if File.directory?(filename)

      key = Digest::MD5.hexdigest(IO.read(filename)).to_sym
      if @duplicates.key?(key)
        @duplicates[key].push(filename)
      else
        @duplicates[key] = [filename]
      end
    end
    @duplicates
end
end
