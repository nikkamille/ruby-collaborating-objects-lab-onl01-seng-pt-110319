class MP3Importer
  
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files || 
  end
  
  def import
    files.each{|file| Song.new_by_filename(file)}
  end
  
end