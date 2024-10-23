require "rmagick"

cat = Magick::ImageList.new("Cheetah.jpg")
smallcat = cat.minify
smallcat.display
smallcat.write("Small-Cheetah.gif")
exit