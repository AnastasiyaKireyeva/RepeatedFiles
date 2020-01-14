class FileOpener
  def get_files
    path_directory = gets.chomp
    Dir[path_directory]
  end
end
