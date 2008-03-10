namespace :imagemagick do 
  namespace :centos do
  
    desc <<-DESC
    Install imagemagick.\n    
    *imagemagick_build_options*: Imagemagick build options.
    <pre>
    set :imagemagick_build_options, {
      :url => "ftp://ftp.imagemagick.org/pub/ImageMagick/ImageMagick.tar.gz",
      :unpack_dir => "ImageMagick-*"
    }
    </pre>
    DESC
    task :install do
      
      # Settings 
      fetch(:imagemagick_build_options)
      
      # Install dependencies
      yum.install([ "libjpeg-devel", "libpng-devel", "glib2-devel", "fontconfig-devel", "zlib-devel", 
        "libwmf-devel", "freetype-devel", "libtiff-devel" ])
        
      build.make_install("imagemagick", imagemagick_build_options)
    end
  
  end
end