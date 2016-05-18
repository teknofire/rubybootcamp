require 'fileutils'

5.times do |number|
   puts number
   cmd = "mkdir foo#{number}"
   puts cmd

   # Need to add in some checking here to make sure the directory doesn't already exist

   FileUtils.mkdir("foo#{number}")
   sleep 1
end
