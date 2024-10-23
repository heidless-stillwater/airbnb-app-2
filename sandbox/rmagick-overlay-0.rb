require "rmagick"

overlay_original = Magick::ImageList.new("bell_14875523.png")
overlay_resized = overlay_original.resize_to_fit(50,50)
# overlay_cropped = overlay_resized.crop(NorthWestGravity, 400, 200)

new_image = Magick::ImageList.new
background = Magick::ImageList.new("avatar.png")
new_image = new_image.composite_layers(background)
# new_image = new_image.composite_layers(overlay_cropped)

cat = Magick::ImageList.new("Cheetah.jpg")
smallcat = cat.minify
smallcat.display
smallcat.write("Small-Cheetah.gif")
exit


# background = ImageList.new("foo.png")
# overlay_original = ImageList.new("bar.png")
# overlay_resized = overlay_original.resize_to_fit(400,400)
# overlay_cropped = overlay_resized.crop(NorthWestGravity, 400, 200)

# new_image = ImageList.new
# new_image = new_image.composite_layers(background)
# new_image = new_image.composite_layers(overlay_cropped)