module HomeHelper
  def generate_color(string)
    srand(string.hash) # seed the random number generator with the hash of the argument
    '#' + ("%06x" % rand(0..0xffffff)) # generate a random 6-digit hex code
  end
end
