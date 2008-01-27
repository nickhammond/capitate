# Installer capistrano helper
module Configr::Helpers::InstallScript
  
  def install_script(script)

    if File.extname(script) == ".erb"
      name = script[0...script.length-4]
      dest = "/tmp/#{name}"
      run "mkdir -p #{File.dirname(dest)}"
      put load_template(script, binding), dest   
      
    else
      name = script
      dest = "/tmp/#{name}"
      run "mkdir -p #{File.dirname(dest)}"
      put load_file(name), dest
    end
    
    sudo "sh -v #{dest}"
  end
  
end