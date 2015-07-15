module InputHelper
  def getchar
    tty_param = `stty -g`
    system 'stty raw -echo'

    str = IO.read '/dev/stdin', 1

    system "stty #{tty_param}"
    print " " + str + "\n"
    return str
  end

  def getstring
    f = gets.chomp
    return f
  end

  def printstring(str)
  end
end
