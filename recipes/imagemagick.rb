namespace :imagemagick do
  
  task :install do
    
    package_install([ "libjpeg-devel", "libpng-devel", "glib2-devel", "fontconfig-devel", "zlib-devel",
      "libwmf-devel", "freetype-devel", "libtiff-devel"])
      
    script_install("imagemagick/install.sh")
  end
  
end