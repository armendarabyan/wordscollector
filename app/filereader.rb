require "./activerecord/words"

class FileReader
  def read(file)
    a = File.read(file);
    b = a.scan(/[A-Za-z]+/)
    return b
  end
end
