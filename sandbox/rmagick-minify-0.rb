require "rmagick"
cat = Magick::ImageList.new("Cheetah.jpg")
smallcat = cat.minify
smallcat.display
exit