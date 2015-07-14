module InputHelper
  def getchar
    tty_param = `stty -g`
    system 'stty raw -echo'

    str = IO.read '/dev/stdin', 1

    system "stty #{tty_param}"
    print " " + str + "\n"
    return str
  end

  def printstring(str)
  end
end
